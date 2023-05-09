resource "google_compute_subnetwork" "ljjljj" {
  ip_cidr_range              = "10.101.0.0/16"
  name                       = "ljjljj"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.ljjljj projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/ljjljj
