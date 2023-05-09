resource "google_compute_subnetwork" "moon_mgmt_subnet_terraform" {
  ip_cidr_range              = "10.200.0.0/20"
  name                       = "moon-mgmt-subnet-terraform"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.moon_mgmt_subnet_terraform projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/moon-mgmt-subnet-terraform
