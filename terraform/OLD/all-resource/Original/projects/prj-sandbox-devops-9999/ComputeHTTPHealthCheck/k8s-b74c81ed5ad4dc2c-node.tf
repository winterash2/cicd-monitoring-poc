resource "google_compute_http_health_check" "k8s_b74c81ed5ad4dc2c_node" {
  check_interval_sec  = 8
  description         = "{\"kubernetes.io/service-name\":\"k8s-b74c81ed5ad4dc2c-node\"}"
  healthy_threshold   = 1
  name                = "k8s-b74c81ed5ad4dc2c-node"
  port                = 10256
  project             = "prj-sandbox-devops-9999"
  request_path        = "/healthz"
  timeout_sec         = 1
  unhealthy_threshold = 3
}
# terraform import google_compute_http_health_check.k8s_b74c81ed5ad4dc2c_node projects/prj-sandbox-devops-9999/global/httpHealthChecks/k8s-b74c81ed5ad4dc2c-node
