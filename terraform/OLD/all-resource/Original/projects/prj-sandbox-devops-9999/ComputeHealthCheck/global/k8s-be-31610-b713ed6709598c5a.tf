resource "google_compute_health_check" "k8s_be_31610__b713ed6709598c5a" {
  check_interval_sec = 60
  description        = "Default kubernetes L7 Loadbalancing health check."
  healthy_threshold  = 1

  http_health_check {
    port         = 31610
    proxy_header = "NONE"
    request_path = "/healthz"
  }

  name                = "k8s-be-31610--b713ed6709598c5a"
  project             = "prj-sandbox-devops-9999"
  timeout_sec         = 60
  unhealthy_threshold = 10
}
# terraform import google_compute_health_check.k8s_be_31610__b713ed6709598c5a projects/prj-sandbox-devops-9999/global/healthChecks/k8s-be-31610--b713ed6709598c5a
