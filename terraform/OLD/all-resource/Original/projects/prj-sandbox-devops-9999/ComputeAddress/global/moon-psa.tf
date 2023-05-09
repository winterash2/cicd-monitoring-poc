resource "google_compute_global_address" "moon_psa" {
  address       = "172.20.20.0"
  address_type  = "INTERNAL"
  name          = "moon-psa"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network"
  prefix_length = 24
  project       = "prj-sandbox-devops-9999"
  purpose       = "VPC_PEERING"
}
# terraform import google_compute_global_address.moon_psa projects/prj-sandbox-devops-9999/global/addresses/moon-psa
