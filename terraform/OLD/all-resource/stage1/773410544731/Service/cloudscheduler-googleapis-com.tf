resource "google_project_service" "cloudscheduler_googleapis_com" {
  project = "773410544731"
  service = "cloudscheduler.googleapis.com"
}
# terraform import google_project_service.cloudscheduler_googleapis_com 773410544731/cloudscheduler.googleapis.com
