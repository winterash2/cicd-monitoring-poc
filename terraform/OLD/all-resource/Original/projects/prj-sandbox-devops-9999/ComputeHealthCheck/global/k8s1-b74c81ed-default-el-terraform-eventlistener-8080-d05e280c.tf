resource "google_compute_health_check" "k8s1_b74c81ed_default_el_terraform_eventlistener_8080_d05e280c" {
  check_interval_sec = 10
  description        = "Kubernetes L7 health check generated with readiness probe settings."
  healthy_threshold  = 1

  http_health_check {
    port_specification = "USE_SERVING_PORT"
    proxy_header       = "NONE"
    request_path       = "/live"
  }

  name                = "k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c"
  project             = "prj-sandbox-devops-9999"
  timeout_sec         = 1
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.k8s1_b74c81ed_default_el_terraform_eventlistener_8080_d05e280c projects/prj-sandbox-devops-9999/global/healthChecks/k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c
