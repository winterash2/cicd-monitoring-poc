resource "google_compute_global_forwarding_rule" "k8s2_fr_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc" {
  description           = "{\"kubernetes.io/ingress-name\": \"tekton-pipelines/tekton-ingress\"}"
  ip_address            = "35.186.235.240"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "k8s2-fr-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc"
  port_range            = "80-80"
  project               = "prj-sandbox-devops-9999"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/targetHttpProxies/k8s2-tp-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc"
}
# terraform import google_compute_global_forwarding_rule.k8s2_fr_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc projects/prj-sandbox-devops-9999/global/forwardingRules/k8s2-fr-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc
