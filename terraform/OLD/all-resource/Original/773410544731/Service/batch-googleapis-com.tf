resource "google_project_service" "batch_googleapis_com" {
  project = "773410544731"
  service = "batch.googleapis.com"
}
# terraform import google_project_service.batch_googleapis_com 773410544731/batch.googleapis.com
