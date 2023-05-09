resource "google_project_service" "apigateway_googleapis_com" {
  project = "773410544731"
  service = "apigateway.googleapis.com"
}
# terraform import google_project_service.apigateway_googleapis_com 773410544731/apigateway.googleapis.com
