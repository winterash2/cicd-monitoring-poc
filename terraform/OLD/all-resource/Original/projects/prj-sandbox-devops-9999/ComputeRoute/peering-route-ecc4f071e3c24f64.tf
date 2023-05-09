resource "google_compute_route" "peering_route_ecc4f071e3c24f64" {
  description = "Auto generated route via peering [gke-n75993e5a89cbd6dd569-3c53-5640-peer]."
  dest_range  = "192.168.2.0/28"
  name        = "peering-route-ecc4f071e3c24f64"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority    = 0
  project     = "prj-sandbox-devops-9999"
}
# terraform import google_compute_route.peering_route_ecc4f071e3c24f64 projects/prj-sandbox-devops-9999/global/routes/peering-route-ecc4f071e3c24f64
