resource "google_compute_backend_service" "k8s1_b713ed67_tekton_pipelines_tekton_dashboard_9097_941d933e" {
  connection_draining_timeout_sec = 0
  description                     = "{\"kubernetes.io/service-name\":\"tekton-pipelines/tekton-dashboard\",\"kubernetes.io/service-port\":\"\\u0026ServiceBackendPort{Name:,Number:9097,}\",\"x-features\":[\"NEG\",\"SecurityPolicy\"]}"
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/healthChecks/k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e"]
  load_balancing_scheme           = "EXTERNAL"

  log_config {
    enable      = true
    sample_rate = 1
  }

  name             = "k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e"
  port_name        = "port0"
  project          = "prj-sandbox-devops-9999"
  protocol         = "HTTP"
  security_policy  = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/securityPolicies/tekton-security"
  session_affinity = "CLIENT_IP"
  timeout_sec      = 30
}
# terraform import google_compute_backend_service.k8s1_b713ed67_tekton_pipelines_tekton_dashboard_9097_941d933e projects/prj-sandbox-devops-9999/global/backendServices/k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e
