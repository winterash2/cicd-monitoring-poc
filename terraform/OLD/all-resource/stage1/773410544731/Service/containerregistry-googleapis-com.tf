resource "google_project_service" "containerregistry_googleapis_com" {
  project = "773410544731"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 773410544731/containerregistry.googleapis.com
