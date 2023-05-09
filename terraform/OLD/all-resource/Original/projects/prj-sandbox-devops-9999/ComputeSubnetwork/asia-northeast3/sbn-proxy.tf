resource "google_compute_subnetwork" "sbn_proxy" {
  ip_cidr_range              = "10.1.0.0/16"
  name                       = "sbn-proxy"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "REGIONAL_MANAGED_PROXY"
  region                     = "asia-northeast3"
  role                       = "ACTIVE"
}
# terraform import google_compute_subnetwork.sbn_proxy projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sbn-proxy
