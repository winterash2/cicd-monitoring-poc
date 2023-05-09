resource "google_service_account" "moon_sa" {
  account_id   = "moon-sa"
  description  = "for terraform"
  display_name = "moon-sa"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.moon_sa projects/prj-sandbox-devops-9999/serviceAccounts/moon-sa@prj-sandbox-devops-9999.iam.gserviceaccount.com
