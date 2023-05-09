resource "google_container_node_pool" "default_pool" {
  autoscaling {
    max_node_count = 1
    min_node_count = 0
  }

  cluster            = "gke-clouddevops-sandbox-tekton-poc"
  initial_node_count = 1
  location           = "asia-northeast3-a"

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  max_pods_per_node = 110
  name              = "default-pool"

  network_config {
    pod_ipv4_cidr_block = "10.84.0.0/14"
    pod_range           = "gke-gke-clouddevops-sandbox-tekton-poc-pods-22d0a4fb"
  }

  node_config {
    disk_size_gb = 100
    disk_type    = "pd-balanced"
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

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_count     = 1
  node_locations = ["asia-northeast3-a"]
  project        = "prj-sandbox-devops-9999"

  upgrade_settings {
    max_surge       = 1
    max_unavailable = 0
  }

  version = "1.25.5-gke.2000"
}
# terraform import google_container_node_pool.default_pool prj-sandbox-devops-9999/asia-northeast3-a/gke-clouddevops-sandbox-tekton-poc/default-pool
