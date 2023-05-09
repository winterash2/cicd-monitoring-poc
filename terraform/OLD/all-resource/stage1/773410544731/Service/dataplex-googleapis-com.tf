resource "google_project_service" "dataplex_googleapis_com" {
  project = "773410544731"
  service = "dataplex.googleapis.com"
}
# terraform import google_project_service.dataplex_googleapis_com 773410544731/dataplex.googleapis.com
