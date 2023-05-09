resource "google_compute_route" "peering_route_9f8332fcf7f95157" {
  description = "Auto generated route via peering [gke-n0c7dafa7c319b606d85-1792-3057-peer]."
  dest_range  = "123.123.123.0/28"
  name        = "peering-route-9f8332fcf7f95157"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority    = 0
  project     = "prj-sandbox-devops-9999"
}
# terraform import google_compute_route.peering_route_9f8332fcf7f95157 projects/prj-sandbox-devops-9999/global/routes/peering-route-9f8332fcf7f95157
