resource "google_service_account" "sa_dev_terraform_vet" {
  account_id = "sa-dev-terraform-vet"
  project    = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.sa_dev_terraform_vet projects/prj-sandbox-devops-9999/serviceAccounts/sa-dev-terraform-vet@prj-sandbox-devops-9999.iam.gserviceaccount.com
