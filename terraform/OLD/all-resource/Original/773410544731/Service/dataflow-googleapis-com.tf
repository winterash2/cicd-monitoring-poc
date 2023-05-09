resource "google_project_service" "dataflow_googleapis_com" {
  project = "773410544731"
  service = "dataflow.googleapis.com"
}
# terraform import google_project_service.dataflow_googleapis_com 773410544731/dataflow.googleapis.com
