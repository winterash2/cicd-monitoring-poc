resource "google_project_service" "composer_googleapis_com" {
  project = "773410544731"
  service = "composer.googleapis.com"
}
# terraform import google_project_service.composer_googleapis_com 773410544731/composer.googleapis.com
