resource "google_project_service" "cloudkms_googleapis_com" {
  project = "773410544731"
  service = "cloudkms.googleapis.com"
}
# terraform import google_project_service.cloudkms_googleapis_com 773410544731/cloudkms.googleapis.com
