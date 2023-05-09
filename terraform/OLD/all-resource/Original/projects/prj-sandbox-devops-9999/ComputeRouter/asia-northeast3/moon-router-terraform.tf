resource "google_compute_router" "moon_router_terraform" {
  name    = "moon-router-terraform"
  network = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  project = "prj-sandbox-devops-9999"
  region  = "asia-northeast3"
}
# terraform import google_compute_router.moon_router_terraform projects/prj-sandbox-devops-9999/regions/asia-northeast3/routers/moon-router-terraform
