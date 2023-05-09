resource "google_container_node_pool" "pool_1" {
  cluster            = "gke-dev-clouddevops-sandbox-tekton"
  initial_node_count = 0
  location           = "asia-northeast3"

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  max_pods_per_node = 110
  name              = "pool-1"

  network_config {
    pod_ipv4_cidr_block = "10.108.0.0/14"
    pod_range           = "gke-gke-dev-clouddevops-sandbox-tekton-pods-d59696cd"
  }

  node_config {
    disk_size_gb = 100
    disk_type    = "pd-standard"
    image_type   = "COS_CONTAINERD"
    machine_type = "e2-medium"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }

    tags = ["ssh-bastion"]

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_count     = 0
  node_locations = ["asia-northeast3-a"]
  project        = "prj-sandbox-devops-9999"

  upgrade_settings {
    max_surge       = 1
    max_unavailable = 0
  }

  version = "1.23.14-gke.1800"
}
# terraform import google_container_node_pool.pool_1 prj-sandbox-devops-9999/asia-northeast3/gke-dev-clouddevops-sandbox-tekton/pool-1
