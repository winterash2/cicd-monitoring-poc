resource "google_project_service" "redis_googleapis_com" {
  project = "773410544731"
  service = "redis.googleapis.com"
}
# terraform import google_project_service.redis_googleapis_com 773410544731/redis.googleapis.com
