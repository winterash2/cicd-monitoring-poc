resource "google_project_service" "serviceusage_googleapis_com" {
  project = "773410544731"
  service = "serviceusage.googleapis.com"
}
# terraform import google_project_service.serviceusage_googleapis_com 773410544731/serviceusage.googleapis.com
