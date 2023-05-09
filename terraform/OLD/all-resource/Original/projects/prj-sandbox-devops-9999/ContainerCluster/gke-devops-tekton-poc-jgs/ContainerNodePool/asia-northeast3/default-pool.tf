resource "google_container_node_pool" "default_pool" {
  cluster            = "gke-devops-tekton-poc-jgs"
  initial_node_count = 1
  location           = "asia-northeast3"

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  max_pods_per_node = 110
  name              = "default-pool"

  network_config {
    pod_ipv4_cidr_block = "10.72.0.0/14"
    pod_range           = "gke-gke-devops-tekton-poc-jgs-pods-8f46fa5d"
  }

  node_config {
    disk_size_gb = 100
    disk_type    = "pd-balanced"
    image_type   = "COS_CONTAINERD"
    machine_type = "n2-custom-8-16384"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_count     = 1
  node_locations = ["asia-northeast3-a", "asia-northeast3-b"]
  project        = "prj-sandbox-devops-9999"

  upgrade_settings {
    max_surge       = 1
    max_unavailable = 0
  }

  version = "1.25.6-gke.200"
}
# terraform import google_container_node_pool.default_pool prj-sandbox-devops-9999/asia-northeast3/gke-devops-tekton-poc-jgs/default-pool
