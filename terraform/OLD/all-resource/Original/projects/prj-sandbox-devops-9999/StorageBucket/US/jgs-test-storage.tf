resource "google_storage_bucket" "jgs_test_storage" {
  force_destroy               = false
  location                    = "US"
  name                        = "jgs-test-storage"
  project                     = "prj-sandbox-devops-9999"
  public_access_prevention    = "enforced"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
# terraform import google_storage_bucket.jgs_test_storage jgs-test-storage
