resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "773410544731"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 773410544731/iamcredentials.googleapis.com
