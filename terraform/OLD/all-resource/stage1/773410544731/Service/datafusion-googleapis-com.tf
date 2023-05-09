resource "google_project_service" "datafusion_googleapis_com" {
  project = "773410544731"
  service = "datafusion.googleapis.com"
}
# terraform import google_project_service.datafusion_googleapis_com 773410544731/datafusion.googleapis.com
