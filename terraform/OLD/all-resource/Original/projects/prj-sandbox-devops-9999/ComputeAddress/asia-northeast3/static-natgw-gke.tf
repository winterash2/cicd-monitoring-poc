resource "google_compute_address" "static_natgw_gke" {
  address      = "34.64.251.167"
  address_type = "EXTERNAL"
  name         = "static-natgw-gke"
  network_tier = "PREMIUM"
  project      = "prj-sandbox-devops-9999"
  region       = "asia-northeast3"
}
# terraform import google_compute_address.static_natgw_gke projects/prj-sandbox-devops-9999/regions/asia-northeast3/addresses/static-natgw-gke
