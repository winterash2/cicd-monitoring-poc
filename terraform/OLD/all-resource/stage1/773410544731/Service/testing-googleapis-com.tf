resource "google_project_service" "testing_googleapis_com" {
  project = "773410544731"
  service = "testing.googleapis.com"
}
# terraform import google_project_service.testing_googleapis_com 773410544731/testing.googleapis.com
