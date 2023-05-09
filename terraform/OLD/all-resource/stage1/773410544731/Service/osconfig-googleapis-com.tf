resource "google_project_service" "osconfig_googleapis_com" {
  project = "773410544731"
  service = "osconfig.googleapis.com"
}
# terraform import google_project_service.osconfig_googleapis_com 773410544731/osconfig.googleapis.com
