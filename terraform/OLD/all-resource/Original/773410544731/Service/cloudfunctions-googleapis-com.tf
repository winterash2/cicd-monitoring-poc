resource "google_project_service" "cloudfunctions_googleapis_com" {
  project = "773410544731"
  service = "cloudfunctions.googleapis.com"
}
# terraform import google_project_service.cloudfunctions_googleapis_com 773410544731/cloudfunctions.googleapis.com
