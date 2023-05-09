resource "google_project_service" "ids_googleapis_com" {
  project = "773410544731"
  service = "ids.googleapis.com"
}
# terraform import google_project_service.ids_googleapis_com 773410544731/ids.googleapis.com
