resource "google_project_service" "runtimeconfig_googleapis_com" {
  project = "773410544731"
  service = "runtimeconfig.googleapis.com"
}
# terraform import google_project_service.runtimeconfig_googleapis_com 773410544731/runtimeconfig.googleapis.com
