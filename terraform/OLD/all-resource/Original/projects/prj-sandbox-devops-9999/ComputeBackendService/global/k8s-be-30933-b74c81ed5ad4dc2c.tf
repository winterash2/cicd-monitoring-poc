resource "google_compute_backend_service" "k8s_be_30933__b74c81ed5ad4dc2c" {
  connection_draining_timeout_sec = 0
  description                     = "{\"kubernetes.io/service-name\":\"kube-system/default-http-backend\",\"kubernetes.io/service-port\":\"\\u0026ServiceBackendPort{Name:http,Number:0,}\"}"
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/healthChecks/k8s-be-30933--b74c81ed5ad4dc2c"]
  load_balancing_scheme           = "EXTERNAL"

  log_config {
    enable      = true
    sample_rate = 1
  }

  name             = "k8s-be-30933--b74c81ed5ad4dc2c"
  port_name        = "port30933"
  project          = "prj-sandbox-devops-9999"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = 30
}
# terraform import google_compute_backend_service.k8s_be_30933__b74c81ed5ad4dc2c projects/prj-sandbox-devops-9999/global/backendServices/k8s-be-30933--b74c81ed5ad4dc2c
