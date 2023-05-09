resource "google_compute_network" "shared_vpc_host_project" {
  auto_create_subnetworks = false
  mtu                     = 1460
  name                    = "shared-vpc-host-project"
  project                 = "prj-sandbox-devops-9999"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.shared_vpc_host_project projects/prj-sandbox-devops-9999/global/networks/shared-vpc-host-project
