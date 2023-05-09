resource "google_compute_network" "moon_network" {
  auto_create_subnetworks = false
  mtu                     = 1460
  name                    = "moon-network"
  project                 = "prj-sandbox-devops-9999"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.moon_network projects/prj-sandbox-devops-9999/global/networks/moon-network
