resource "google_compute_backend_service" "k8s_be_31610__b713ed6709598c5a" {
  connection_draining_timeout_sec = 0
  description                     = "{\"kubernetes.io/service-name\":\"kube-system/default-http-backend\",\"kubernetes.io/service-port\":\"\\u0026ServiceBackendPort{Name:http,Number:0,}\"}"
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/healthChecks/k8s-be-31610--b713ed6709598c5a"]
  load_balancing_scheme           = "EXTERNAL"

  log_config {
    enable      = true
    sample_rate = 1
  }

  name             = "k8s-be-31610--b713ed6709598c5a"
  port_name        = "port31610"
  project          = "prj-sandbox-devops-9999"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = 30
}
# terraform import google_compute_backend_service.k8s_be_31610__b713ed6709598c5a projects/prj-sandbox-devops-9999/global/backendServices/k8s-be-31610--b713ed6709598c5a
