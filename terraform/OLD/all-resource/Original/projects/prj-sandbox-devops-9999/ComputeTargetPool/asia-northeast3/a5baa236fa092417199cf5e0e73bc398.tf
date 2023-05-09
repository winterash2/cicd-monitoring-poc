resource "google_compute_target_pool" "a5baa236fa092417199cf5e0e73bc398" {
  description      = "{\"kubernetes.io/service-name\":\"bookinfo/productpage\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/httpHealthChecks/k8s-f67ab38a427afc6b-node"]
  instances        = ["asia-northeast3-a/gke-moon-cluster-cli-default-pool-d6e8607e-4h08", "asia-northeast3-b/gke-moon-cluster-cli-default-pool-9e3e8e7a-g9cj", "asia-northeast3-c/gke-moon-cluster-cli-default-pool-c71723ed-v8fk"]
  name             = "a5baa236fa092417199cf5e0e73bc398"
  project          = "prj-sandbox-devops-9999"
  region           = "asia-northeast3"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a5baa236fa092417199cf5e0e73bc398 projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a5baa236fa092417199cf5e0e73bc398
