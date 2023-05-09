resource "google_compute_subnetwork" "sn_ljj_gke_test" {
  description                = "sn-ljj-gke-node"
  ip_cidr_range              = "10.100.10.0/24"
  name                       = "sn-ljj-gke-test"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.sn_ljj_gke_test projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sn-ljj-gke-test
