resource "google_compute_target_pool" "a3ca9569fe04b4b3393e7a9a21503cca" {
  description      = "{\"kubernetes.io/service-name\":\"default/productpage\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/httpHealthChecks/k8s-f67ab38a427afc6b-node"]
  instances        = ["asia-northeast3-a/gke-moon-cluster-cli-default-pool-d6e8607e-4h08", "asia-northeast3-b/gke-moon-cluster-cli-default-pool-9e3e8e7a-g9cj", "asia-northeast3-c/gke-moon-cluster-cli-default-pool-c71723ed-v8fk"]
  name             = "a3ca9569fe04b4b3393e7a9a21503cca"
  project          = "prj-sandbox-devops-9999"
  region           = "asia-northeast3"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a3ca9569fe04b4b3393e7a9a21503cca projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a3ca9569fe04b4b3393e7a9a21503cca
