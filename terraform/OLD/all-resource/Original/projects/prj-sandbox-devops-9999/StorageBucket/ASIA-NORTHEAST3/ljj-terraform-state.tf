resource "google_storage_bucket" "ljj_terraform_state" {
  force_destroy = false

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      num_newer_versions = 1
      with_state         = "ARCHIVED"
    }
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      days_since_noncurrent_time = 7
      with_state                 = "ANY"
    }
  }

  location                    = "ASIA-NORTHEAST3"
  name                        = "ljj-terraform-state"
  project                     = "prj-sandbox-devops-9999"
  public_access_prevention    = "inherited"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}
# terraform import google_storage_bucket.ljj_terraform_state ljj-terraform-state
