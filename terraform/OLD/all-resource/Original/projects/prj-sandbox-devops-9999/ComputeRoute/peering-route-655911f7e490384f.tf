resource "google_compute_route" "peering_route_655911f7e490384f" {
  description = "Auto generated route via peering [servicenetworking-googleapis-com]."
  dest_range  = "172.20.20.0/24"
  name        = "peering-route-655911f7e490384f"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network"
  priority    = 0
  project     = "prj-sandbox-devops-9999"
}
# terraform import google_compute_route.peering_route_655911f7e490384f projects/prj-sandbox-devops-9999/global/routes/peering-route-655911f7e490384f
