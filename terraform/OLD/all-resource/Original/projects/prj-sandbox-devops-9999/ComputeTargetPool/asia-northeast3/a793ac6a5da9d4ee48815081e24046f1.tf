resource "google_compute_target_pool" "a793ac6a5da9d4ee48815081e24046f1" {
  description      = "{\"kubernetes.io/service-name\":\"anthos-identity-service/gke-oidc-envoy\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/httpHealthChecks/k8s-b74c81ed5ad4dc2c-node"]
  name             = "a793ac6a5da9d4ee48815081e24046f1"
  project          = "prj-sandbox-devops-9999"
  region           = "asia-northeast3"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a793ac6a5da9d4ee48815081e24046f1 projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a793ac6a5da9d4ee48815081e24046f1
