resource "google_project_service" "monitoring_googleapis_com" {
  project = "773410544731"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 773410544731/monitoring.googleapis.com
