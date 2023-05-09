resource "google_storage_bucket" "staging_prj_sandbox_devops_9999_appspot_com" {
  force_destroy = false

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age        = 15
      with_state = "ANY"
    }
  }

  location                 = "ASIA-NORTHEAST3"
  name                     = "staging.prj-sandbox-devops-9999.appspot.com"
  project                  = "prj-sandbox-devops-9999"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.staging_prj_sandbox_devops_9999_appspot_com staging.prj-sandbox-devops-9999.appspot.com
