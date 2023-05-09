resource "google_container_node_pool" "default_pool" {
  cluster            = "moon-cluster-cli"
  initial_node_count = 1
  location           = "asia-northeast3"

  management {
    auto_repair = true
  }

  max_pods_per_node = 110
  name              = "default-pool"

  network_config {
    pod_ipv4_cidr_block = "10.92.0.0/14"
    pod_range           = "gke-moon-cluster-cli-pods-4dcba798"
  }

  node_config {
    disk_size_gb = 32
    disk_type    = "pd-standard"
    image_type   = "COS_CONTAINERD"
    machine_type = "e2-small"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }

  node_count     = 1
  node_locations = ["asia-northeast3-a", "asia-northeast3-b", "asia-northeast3-c"]
  project        = "prj-sandbox-devops-9999"

  upgrade_settings {
    max_surge       = 1
    max_unavailable = 0
  }

  version = "1.25.5-gke.2000"
}
# terraform import google_container_node_pool.default_pool prj-sandbox-devops-9999/asia-northeast3/moon-cluster-cli/default-pool
