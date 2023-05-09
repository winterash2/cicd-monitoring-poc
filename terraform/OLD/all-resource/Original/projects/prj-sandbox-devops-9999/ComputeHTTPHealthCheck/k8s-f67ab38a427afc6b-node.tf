resource "google_compute_http_health_check" "k8s_f67ab38a427afc6b_node" {
  check_interval_sec  = 8
  description         = "{\"kubernetes.io/service-name\":\"k8s-f67ab38a427afc6b-node\"}"
  healthy_threshold   = 1
  name                = "k8s-f67ab38a427afc6b-node"
  port                = 10256
  project             = "prj-sandbox-devops-9999"
  request_path        = "/healthz"
  timeout_sec         = 1
  unhealthy_threshold = 3
}
# terraform import google_compute_http_health_check.k8s_f67ab38a427afc6b_node projects/prj-sandbox-devops-9999/global/httpHealthChecks/k8s-f67ab38a427afc6b-node
