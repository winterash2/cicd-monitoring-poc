resource "google_project_service" "spanner_googleapis_com" {
  project = "773410544731"
  service = "spanner.googleapis.com"
}
# terraform import google_project_service.spanner_googleapis_com 773410544731/spanner.googleapis.com
