resource "google_compute_subnetwork" "moon_node_subnet_terraform" {
  ip_cidr_range              = "10.178.0.0/20"
  name                       = "moon-node-subnet-terraform"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"

  secondary_ip_range {
    ip_cidr_range = "10.96.0.0/20"
    range_name    = "gke-moon-cluster-cli-services-4dcba798"
  }

  secondary_ip_range {
    ip_cidr_range = "10.92.0.0/14"
    range_name    = "gke-moon-cluster-cli-pods-4dcba798"
  }

  stack_type = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.moon_node_subnet_terraform projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/moon-node-subnet-terraform
