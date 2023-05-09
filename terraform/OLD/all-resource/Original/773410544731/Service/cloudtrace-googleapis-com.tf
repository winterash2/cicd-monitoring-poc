resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "773410544731"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 773410544731/cloudtrace.googleapis.com
