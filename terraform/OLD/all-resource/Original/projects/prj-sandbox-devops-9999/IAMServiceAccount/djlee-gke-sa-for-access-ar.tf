resource "google_service_account" "djlee_gke_sa_for_access_ar" {
  account_id   = "djlee-gke-sa-for-access-ar"
  display_name = "djlee-gke-sa-for-access-ar"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.djlee_gke_sa_for_access_ar projects/prj-sandbox-devops-9999/serviceAccounts/djlee-gke-sa-for-access-ar@prj-sandbox-devops-9999.iam.gserviceaccount.com
