resource "google_project_service" "pubsublite_googleapis_com" {
  project = "773410544731"
  service = "pubsublite.googleapis.com"
}
# terraform import google_project_service.pubsublite_googleapis_com 773410544731/pubsublite.googleapis.com
