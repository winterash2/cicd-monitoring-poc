resource "google_compute_address" "gitlab" {
  address      = "10.7.0.2"
  address_type = "INTERNAL"
  name         = "gitlab"
  network_tier = "PREMIUM"
  project      = "prj-sandbox-devops-9999"
  purpose      = "GCE_ENDPOINT"
  region       = "asia-northeast3"
  subnetwork   = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sbn-mgmt"
}
# terraform import google_compute_address.gitlab projects/prj-sandbox-devops-9999/regions/asia-northeast3/addresses/gitlab
