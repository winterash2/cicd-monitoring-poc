resource "google_storage_bucket" "moon_storage_cli" {
  force_destroy               = false
  location                    = "ASIA-NORTHEAST3"
  name                        = "moon-storage-cli"
  project                     = "prj-sandbox-devops-9999"
  public_access_prevention    = "enforced"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
# terraform import google_storage_bucket.moon_storage_cli moon-storage-cli
