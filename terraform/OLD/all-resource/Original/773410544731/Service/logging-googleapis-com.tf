resource "google_project_service" "logging_googleapis_com" {
  project = "773410544731"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 773410544731/logging.googleapis.com
