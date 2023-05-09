resource "google_service_account" "sa_dev_gyeongsik_test" {
  account_id   = "sa-dev-gyeongsik-test"
  display_name = "sa-dev-gyeongsik-test"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.sa_dev_gyeongsik_test projects/prj-sandbox-devops-9999/serviceAccounts/sa-dev-gyeongsik-test@prj-sandbox-devops-9999.iam.gserviceaccount.com
