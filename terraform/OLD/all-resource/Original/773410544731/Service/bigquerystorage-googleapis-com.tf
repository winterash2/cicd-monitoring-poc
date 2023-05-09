resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "773410544731"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 773410544731/bigquerystorage.googleapis.com
