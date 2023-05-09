resource "google_service_account" "prj_sandbox_devops_9999" {
  account_id   = "prj-sandbox-devops-9999"
  display_name = "App Engine default service account"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.prj_sandbox_devops_9999 projects/prj-sandbox-devops-9999/serviceAccounts/prj-sandbox-devops-9999@prj-sandbox-devops-9999.iam.gserviceaccount.com
