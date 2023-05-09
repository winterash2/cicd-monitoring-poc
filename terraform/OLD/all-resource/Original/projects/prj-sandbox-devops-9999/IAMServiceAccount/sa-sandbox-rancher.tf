resource "google_service_account" "sa_sandbox_rancher" {
  account_id   = "sa-sandbox-rancher"
  display_name = "sa-sandbox-rancher"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.sa_sandbox_rancher projects/prj-sandbox-devops-9999/serviceAccounts/sa-sandbox-rancher@prj-sandbox-devops-9999.iam.gserviceaccount.com
