resource "google_project_service" "storage_googleapis_com" {
  project = "773410544731"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 773410544731/storage.googleapis.com
