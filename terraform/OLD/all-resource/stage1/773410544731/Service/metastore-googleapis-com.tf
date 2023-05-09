resource "google_project_service" "metastore_googleapis_com" {
  project = "773410544731"
  service = "metastore.googleapis.com"
}
# terraform import google_project_service.metastore_googleapis_com 773410544731/metastore.googleapis.com
