resource "google_compute_health_check" "k8s_be_30933__b74c81ed5ad4dc2c" {
  check_interval_sec = 60
  description        = "Default kubernetes L7 Loadbalancing health check."
  healthy_threshold  = 1

  http_health_check {
    port         = 30933
    proxy_header = "NONE"
    request_path = "/healthz"
  }

  name                = "k8s-be-30933--b74c81ed5ad4dc2c"
  project             = "prj-sandbox-devops-9999"
  timeout_sec         = 60
  unhealthy_threshold = 10
}
# terraform import google_compute_health_check.k8s_be_30933__b74c81ed5ad4dc2c projects/prj-sandbox-devops-9999/global/healthChecks/k8s-be-30933--b74c81ed5ad4dc2c
