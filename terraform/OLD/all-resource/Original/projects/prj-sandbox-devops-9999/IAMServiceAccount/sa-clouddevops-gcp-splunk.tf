resource "google_service_account" "sa_clouddevops_gcp_splunk" {
  account_id   = "sa-clouddevops-gcp-splunk"
  display_name = "sa-clouddevops-gcp-splunk"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_account.sa_clouddevops_gcp_splunk projects/prj-sandbox-devops-9999/serviceAccounts/sa-clouddevops-gcp-splunk@prj-sandbox-devops-9999.iam.gserviceaccount.com
