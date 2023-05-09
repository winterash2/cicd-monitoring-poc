resource "google_project_service" "storage_api_googleapis_com" {
  project = "773410544731"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 773410544731/storage-api.googleapis.com
