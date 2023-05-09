resource "google_project_service" "clouddeploy_googleapis_com" {
  project = "773410544731"
  service = "clouddeploy.googleapis.com"
}
# terraform import google_project_service.clouddeploy_googleapis_com 773410544731/clouddeploy.googleapis.com
