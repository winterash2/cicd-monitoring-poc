resource "google_service_account" "djlee_sa_for_cicd" {
  account_id   = "djlee-sa-for-cicd"
  display_name = "djlee-sa-for-cicd"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.djlee_sa_for_cicd projects/prj-sandbox-devops-9999/serviceAccounts/djlee-sa-for-cicd@prj-sandbox-devops-9999.iam.gserviceaccount.com
