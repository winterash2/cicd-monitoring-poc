resource "google_project_service" "dns_googleapis_com" {
  project = "773410544731"
  service = "dns.googleapis.com"
}
# terraform import google_project_service.dns_googleapis_com 773410544731/dns.googleapis.com
