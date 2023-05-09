resource "google_project_service" "dataform_googleapis_com" {
  project = "773410544731"
  service = "dataform.googleapis.com"
}
# terraform import google_project_service.dataform_googleapis_com 773410544731/dataform.googleapis.com
