resource "google_storage_bucket" "prj_sandbox_devops_9999_cloudbuild" {
  force_destroy            = false
  location                 = "US"
  name                     = "prj-sandbox-devops-9999_cloudbuild"
  project                  = "prj-sandbox-devops-9999"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.prj_sandbox_devops_9999_cloudbuild prj-sandbox-devops-9999_cloudbuild
