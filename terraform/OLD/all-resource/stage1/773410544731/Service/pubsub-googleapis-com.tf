resource "google_project_service" "pubsub_googleapis_com" {
  project = "773410544731"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 773410544731/pubsub.googleapis.com
