resource "google_project_service" "compute_googleapis_com" {
  project = "773410544731"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 773410544731/compute.googleapis.com
