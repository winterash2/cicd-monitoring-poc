resource "google_project_service" "bigquery_googleapis_com" {
  project = "773410544731"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 773410544731/bigquery.googleapis.com
