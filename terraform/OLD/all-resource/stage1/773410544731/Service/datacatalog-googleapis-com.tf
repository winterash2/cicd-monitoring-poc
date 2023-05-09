resource "google_project_service" "datacatalog_googleapis_com" {
  project = "773410544731"
  service = "datacatalog.googleapis.com"
}
# terraform import google_project_service.datacatalog_googleapis_com 773410544731/datacatalog.googleapis.com
