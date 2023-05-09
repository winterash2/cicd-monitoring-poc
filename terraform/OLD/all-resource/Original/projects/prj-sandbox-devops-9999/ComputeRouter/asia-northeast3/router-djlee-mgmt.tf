resource "google_compute_router" "router_djlee_mgmt" {
  name    = "router-djlee-mgmt"
  network = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  project = "prj-sandbox-devops-9999"
  region  = "asia-northeast3"
}
# terraform import google_compute_router.router_djlee_mgmt projects/prj-sandbox-devops-9999/regions/asia-northeast3/routers/router-djlee-mgmt
