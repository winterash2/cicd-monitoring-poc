resource "google_storage_bucket" "artifacts_prj_sandbox_devops_9999_appspot_com" {
  force_destroy            = false
  location                 = "US"
  name                     = "artifacts.prj-sandbox-devops-9999.appspot.com"
  project                  = "prj-sandbox-devops-9999"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.artifacts_prj_sandbox_devops_9999_appspot_com artifacts.prj-sandbox-devops-9999.appspot.com
