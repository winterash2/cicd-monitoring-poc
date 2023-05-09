resource "google_project_service" "securetoken_googleapis_com" {
  project = "773410544731"
  service = "securetoken.googleapis.com"
}
# terraform import google_project_service.securetoken_googleapis_com 773410544731/securetoken.googleapis.com
