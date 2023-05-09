resource "google_service_account" "sa_dev_terraform_test" {
  account_id   = "sa-dev-terraform-test"
  display_name = "sa-dev-terraform-test"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.sa_dev_terraform_test projects/prj-sandbox-devops-9999/serviceAccounts/sa-dev-terraform-test@prj-sandbox-devops-9999.iam.gserviceaccount.com
