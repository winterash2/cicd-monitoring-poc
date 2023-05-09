resource "google_compute_backend_service" "k8s1_b74c81ed_default_el_terraform_eventlistener_8080_d05e280c" {
  connection_draining_timeout_sec = 0
  description                     = "{\"kubernetes.io/service-name\":\"default/el-terraform-eventlistener\",\"kubernetes.io/service-port\":\"\\u0026ServiceBackendPort{Name:,Number:8080,}\",\"x-features\":[\"NEG\"]}"
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/healthChecks/k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c"]
  load_balancing_scheme           = "EXTERNAL"

  log_config {
    enable      = true
    sample_rate = 1
  }

  name             = "k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c"
  port_name        = "port0"
  project          = "prj-sandbox-devops-9999"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = 30
}
# terraform import google_compute_backend_service.k8s1_b74c81ed_default_el_terraform_eventlistener_8080_d05e280c projects/prj-sandbox-devops-9999/global/backendServices/k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c
