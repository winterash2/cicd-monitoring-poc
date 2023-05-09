resource "google_compute_target_pool" "abeca75ea3a264c7492a7a6f3aa69cfb" {
  description      = "{\"kubernetes.io/service-name\":\"onlineboutique/frontend-external\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/httpHealthChecks/k8s-b644522af973d8a7-node"]
  instances        = ["asia-northeast3-a/gke-gke-djlee-prototypin-default-pool-3f0a6351-46gl", "asia-northeast3-a/gke-gke-djlee-prototypin-default-pool-3f0a6351-6phd", "asia-northeast3-b/gke-gke-djlee-prototypin-default-pool-9fa1c9d6-v2tt", "asia-northeast3-b/gke-gke-djlee-prototypin-default-pool-9fa1c9d6-xf4t", "asia-northeast3-c/gke-gke-djlee-prototypin-default-pool-6390df69-cmwk"]
  name             = "abeca75ea3a264c7492a7a6f3aa69cfb"
  project          = "prj-sandbox-devops-9999"
  region           = "asia-northeast3"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.abeca75ea3a264c7492a7a6f3aa69cfb projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/abeca75ea3a264c7492a7a6f3aa69cfb
