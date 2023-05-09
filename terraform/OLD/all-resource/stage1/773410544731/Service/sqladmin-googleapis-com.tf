resource "google_project_service" "sqladmin_googleapis_com" {
  project = "773410544731"
  service = "sqladmin.googleapis.com"
}
# terraform import google_project_service.sqladmin_googleapis_com 773410544731/sqladmin.googleapis.com
