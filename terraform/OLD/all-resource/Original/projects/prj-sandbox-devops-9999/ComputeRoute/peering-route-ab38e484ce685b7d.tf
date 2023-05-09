resource "google_compute_route" "peering_route_ab38e484ce685b7d" {
  description = "Auto generated route via peering [gke-n75993e5a89cbd6dd569-68cb-535b-peer]."
  dest_range  = "192.168.1.0/28"
  name        = "peering-route-ab38e484ce685b7d"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority    = 0
  project     = "prj-sandbox-devops-9999"
}
# terraform import google_compute_route.peering_route_ab38e484ce685b7d projects/prj-sandbox-devops-9999/global/routes/peering-route-ab38e484ce685b7d
