resource "google_project_service" "run_googleapis_com" {
  project = "773410544731"
  service = "run.googleapis.com"
}
# terraform import google_project_service.run_googleapis_com 773410544731/run.googleapis.com
