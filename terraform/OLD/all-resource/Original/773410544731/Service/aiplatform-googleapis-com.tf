resource "google_project_service" "aiplatform_googleapis_com" {
  project = "773410544731"
  service = "aiplatform.googleapis.com"
}
# terraform import google_project_service.aiplatform_googleapis_com 773410544731/aiplatform.googleapis.com
