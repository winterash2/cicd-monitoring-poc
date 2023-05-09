resource "google_service_account" "sa_ef_dev_cicd_demo" {
  account_id   = "sa-ef-dev-cicd-demo"
  display_name = "sa-ef-dev-cicd-demo"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.sa_ef_dev_cicd_demo projects/prj-sandbox-devops-9999/serviceAccounts/sa-ef-dev-cicd-demo@prj-sandbox-devops-9999.iam.gserviceaccount.com
