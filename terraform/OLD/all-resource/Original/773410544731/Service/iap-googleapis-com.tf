resource "google_project_service" "iap_googleapis_com" {
  project = "773410544731"
  service = "iap.googleapis.com"
}
# terraform import google_project_service.iap_googleapis_com 773410544731/iap.googleapis.com
