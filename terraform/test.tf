provider "google" {
  project     = "prj-sandbox-devops-9999"
  impersonate_service_account = "sa-djlee-for-terraform@prj-sandbox-devops-9999.iam.gserviceaccount.com"
}

resource "google_compute_network" "vpc_djlee_test_terraform" {
  auto_create_subnetworks = false
  mtu                     = 1460
  name                    = "vpc-djlee-test-terraform"
  routing_mode            = "REGIONAL"
}