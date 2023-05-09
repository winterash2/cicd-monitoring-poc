resource "google_project_service" "oslogin_googleapis_com" {
  project = "773410544731"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 773410544731/oslogin.googleapis.com
