resource "google_project_service" "memcache_googleapis_com" {
  project = "773410544731"
  service = "memcache.googleapis.com"
}
# terraform import google_project_service.memcache_googleapis_com 773410544731/memcache.googleapis.com
