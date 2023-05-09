resource "google_project_service" "servicemanagement_googleapis_com" {
  project = "773410544731"
  service = "servicemanagement.googleapis.com"
}
# terraform import google_project_service.servicemanagement_googleapis_com 773410544731/servicemanagement.googleapis.com
