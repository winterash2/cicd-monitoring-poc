resource "google_compute_route" "peering_route_bb9dcee45073dec0" {
  description = "Auto generated route via peering [gke-n6d7736c20f3c122bf77-13b6-a1ea-peer]."
  dest_range  = "10.2.0.0/28"
  name        = "peering-route-bb9dcee45073dec0"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority    = 0
  project     = "prj-sandbox-devops-9999"
}
# terraform import google_compute_route.peering_route_bb9dcee45073dec0 projects/prj-sandbox-devops-9999/global/routes/peering-route-bb9dcee45073dec0
