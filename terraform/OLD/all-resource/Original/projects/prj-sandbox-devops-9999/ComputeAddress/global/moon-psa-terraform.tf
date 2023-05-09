resource "google_compute_global_address" "moon_psa_terraform" {
  address       = "172.20.20.0"
  address_type  = "INTERNAL"
  name          = "moon-psa-terraform"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  prefix_length = 24
  project       = "prj-sandbox-devops-9999"
  purpose       = "VPC_PEERING"
}
# terraform import google_compute_global_address.moon_psa_terraform projects/prj-sandbox-devops-9999/global/addresses/moon-psa-terraform
