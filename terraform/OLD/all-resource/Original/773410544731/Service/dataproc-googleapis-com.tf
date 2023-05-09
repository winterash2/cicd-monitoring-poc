resource "google_project_service" "dataproc_googleapis_com" {
  project = "773410544731"
  service = "dataproc.googleapis.com"
}
# terraform import google_project_service.dataproc_googleapis_com 773410544731/dataproc.googleapis.com
