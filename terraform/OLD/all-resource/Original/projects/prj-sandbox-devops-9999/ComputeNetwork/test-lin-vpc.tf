resource "google_compute_network" "test_lin_vpc" {
  auto_create_subnetworks = false
  description             = "채린 연습중입니다"
  mtu                     = 1460
  name                    = "test-lin-vpc"
  project                 = "prj-sandbox-devops-9999"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.test_lin_vpc projects/prj-sandbox-devops-9999/global/networks/test-lin-vpc
