resource "google_project_service" "cloudapis_googleapis_com" {
  project = "773410544731"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 773410544731/cloudapis.googleapis.com
