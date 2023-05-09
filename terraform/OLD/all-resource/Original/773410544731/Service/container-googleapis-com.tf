resource "google_project_service" "container_googleapis_com" {
  project = "773410544731"
  service = "container.googleapis.com"
}
# terraform import google_project_service.container_googleapis_com 773410544731/container.googleapis.com
