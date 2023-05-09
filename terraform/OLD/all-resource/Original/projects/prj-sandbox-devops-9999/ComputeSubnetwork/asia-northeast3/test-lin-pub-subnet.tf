resource "google_compute_subnetwork" "test_lin_pub_subnet" {
  ip_cidr_range              = "10.0.1.0/24"
  name                       = "test-lin-pub-subnet"
  network                    = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/test-lin-vpc"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "prj-sandbox-devops-9999"
  purpose                    = "PRIVATE"
  region                     = "asia-northeast3"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.test_lin_pub_subnet projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/test-lin-pub-subnet
