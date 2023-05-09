resource "google_compute_route" "peering_route_f04f0aacb093d247" {
  description = "Auto generated route via peering [servicenetworking-googleapis-com]."
  dest_range  = "172.20.20.0/24"
  name        = "peering-route-f04f0aacb093d247"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority    = 0
  project     = "prj-sandbox-devops-9999"
}
# terraform import google_compute_route.peering_route_f04f0aacb093d247 projects/prj-sandbox-devops-9999/global/routes/peering-route-f04f0aacb093d247
