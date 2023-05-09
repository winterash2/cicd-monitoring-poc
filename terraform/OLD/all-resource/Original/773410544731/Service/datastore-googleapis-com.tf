resource "google_project_service" "datastore_googleapis_com" {
  project = "773410544731"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 773410544731/datastore.googleapis.com
