resource "google_compute_network" "djlee_prototyping" {
  auto_create_subnetworks = false
  mtu                     = 1460
  name                    = "djlee-prototyping"
  project                 = "prj-sandbox-devops-9999"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.djlee_prototyping projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping
