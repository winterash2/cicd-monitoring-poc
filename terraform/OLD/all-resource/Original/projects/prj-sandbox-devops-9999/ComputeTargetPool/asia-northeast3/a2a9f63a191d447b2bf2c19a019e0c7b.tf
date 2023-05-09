resource "google_compute_target_pool" "a2a9f63a191d447b2bf2c19a019e0c7b" {
  description      = "{\"kubernetes.io/service-name\":\"ingress-nginx/ingress-nginx-controller\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/httpHealthChecks/k8s-b74c81ed5ad4dc2c-node"]
  name             = "a2a9f63a191d447b2bf2c19a019e0c7b"
  project          = "prj-sandbox-devops-9999"
  region           = "asia-northeast3"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a2a9f63a191d447b2bf2c19a019e0c7b projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a2a9f63a191d447b2bf2c19a019e0c7b
