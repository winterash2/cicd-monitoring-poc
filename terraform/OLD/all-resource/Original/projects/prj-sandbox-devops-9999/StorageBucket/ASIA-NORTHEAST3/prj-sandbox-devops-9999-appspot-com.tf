resource "google_storage_bucket" "prj_sandbox_devops_9999_appspot_com" {
  force_destroy            = false
  location                 = "ASIA-NORTHEAST3"
  name                     = "prj-sandbox-devops-9999.appspot.com"
  project                  = "prj-sandbox-devops-9999"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.prj_sandbox_devops_9999_appspot_com prj-sandbox-devops-9999.appspot.com
