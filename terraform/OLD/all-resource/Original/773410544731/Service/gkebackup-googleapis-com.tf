resource "google_project_service" "gkebackup_googleapis_com" {
  project = "773410544731"
  service = "gkebackup.googleapis.com"
}
# terraform import google_project_service.gkebackup_googleapis_com 773410544731/gkebackup.googleapis.com
