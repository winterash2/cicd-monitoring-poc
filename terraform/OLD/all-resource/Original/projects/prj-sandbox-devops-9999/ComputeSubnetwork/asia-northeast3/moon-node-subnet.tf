resource "google_compute_subnetwork" "moon_node_subnet" {
  ip_cidr_range              = "10.178.0.0/20"
  name                       = "moon-node-subnet"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.moon_node_subnet projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/moon-node-subnet
