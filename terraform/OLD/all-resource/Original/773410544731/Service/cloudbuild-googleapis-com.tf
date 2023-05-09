resource "google_project_service" "cloudbuild_googleapis_com" {
  project = "773410544731"
  service = "cloudbuild.googleapis.com"
}
# terraform import google_project_service.cloudbuild_googleapis_com 773410544731/cloudbuild.googleapis.com
