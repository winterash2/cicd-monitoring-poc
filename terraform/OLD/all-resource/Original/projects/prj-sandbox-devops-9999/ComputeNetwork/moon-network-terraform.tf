resource "google_compute_network" "moon_network_terraform" {
  auto_create_subnetworks = false
  name                    = "moon-network-terraform"
  project                 = "prj-sandbox-devops-9999"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.moon_network_terraform projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform
