resource "google_compute_subnetwork" "sbn_k8s_node" {
  ip_cidr_range = "10.3.0.0/16"

  log_config {
    aggregation_interval = "INTERVAL_5_SEC"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }

  name                       = "sbn-k8s-node"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"

  secondary_ip_range {
    ip_cidr_range = "10.232.0.0/20"
    range_name    = "gke-gke-djlee-prototyping-services-d4660811"
  }

  secondary_ip_range {
    ip_cidr_range = "10.228.0.0/14"
    range_name    = "gke-gke-djlee-prototyping-pods-d4660811"
  }

  stack_type = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.sbn_k8s_node projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sbn-k8s-node
