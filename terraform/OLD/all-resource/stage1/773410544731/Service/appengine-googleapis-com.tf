resource "google_project_service" "appengine_googleapis_com" {
  project = "773410544731"
  service = "appengine.googleapis.com"
}
# terraform import google_project_service.appengine_googleapis_com 773410544731/appengine.googleapis.com
