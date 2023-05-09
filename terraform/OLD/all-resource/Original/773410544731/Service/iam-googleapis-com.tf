resource "google_project_service" "iam_googleapis_com" {
  project = "773410544731"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 773410544731/iam.googleapis.com
