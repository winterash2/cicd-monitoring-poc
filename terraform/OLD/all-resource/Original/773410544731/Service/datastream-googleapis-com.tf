resource "google_project_service" "datastream_googleapis_com" {
  project = "773410544731"
  service = "datastream.googleapis.com"
}
# terraform import google_project_service.datastream_googleapis_com 773410544731/datastream.googleapis.com
