resource "google_service_account" "773410544731_compute" {
  account_id   = "773410544731-compute"
  display_name = "Compute Engine default service account"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.773410544731_compute projects/prj-sandbox-devops-9999/serviceAccounts/773410544731-compute@prj-sandbox-devops-9999.iam.gserviceaccount.com
