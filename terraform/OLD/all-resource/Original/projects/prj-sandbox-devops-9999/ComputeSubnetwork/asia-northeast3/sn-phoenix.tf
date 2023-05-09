resource "google_compute_subnetwork" "sn_phoenix" {
  ip_cidr_range              = "192.168.0.0/24"
  name                       = "sn-phoenix"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/shared-vpc-host-project"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.sn_phoenix projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sn-phoenix
