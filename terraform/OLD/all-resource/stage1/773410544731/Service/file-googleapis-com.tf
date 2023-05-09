resource "google_project_service" "file_googleapis_com" {
  project = "773410544731"
  service = "file.googleapis.com"
}
# terraform import google_project_service.file_googleapis_com 773410544731/file.googleapis.com
