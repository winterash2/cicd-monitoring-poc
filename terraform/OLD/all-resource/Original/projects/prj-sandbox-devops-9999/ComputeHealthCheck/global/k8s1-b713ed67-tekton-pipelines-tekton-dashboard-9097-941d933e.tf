resource "google_compute_health_check" "k8s1_b713ed67_tekton_pipelines_tekton_dashboard_9097_941d933e" {
  check_interval_sec = 30
  description        = "Kubernetes L7 health check generated with readiness probe settings."
  healthy_threshold  = 1

  http_health_check {
    port               = 9097
    port_specification = "USE_FIXED_PORT"
    proxy_header       = "NONE"
    request_path       = "/health"
  }

  name                = "k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e"
  project             = "prj-sandbox-devops-9999"
  timeout_sec         = 5
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.k8s1_b713ed67_tekton_pipelines_tekton_dashboard_9097_941d933e projects/prj-sandbox-devops-9999/global/healthChecks/k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e
