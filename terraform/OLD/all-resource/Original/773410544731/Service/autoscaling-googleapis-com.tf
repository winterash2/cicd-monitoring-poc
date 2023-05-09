resource "google_project_service" "autoscaling_googleapis_com" {
  project = "773410544731"
  service = "autoscaling.googleapis.com"
}
# terraform import google_project_service.autoscaling_googleapis_com 773410544731/autoscaling.googleapis.com
