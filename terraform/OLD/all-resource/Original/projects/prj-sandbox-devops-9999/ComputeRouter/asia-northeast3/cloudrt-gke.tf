resource "google_compute_router" "cloudrt_gke" {
  description = "Cloud Router for Private GKE"
  name        = "cloudrt-gke"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  project     = "prj-sandbox-devops-9999"
  region      = "asia-northeast3"
}
# terraform import google_compute_router.cloudrt_gke projects/prj-sandbox-devops-9999/regions/asia-northeast3/routers/cloudrt-gke
