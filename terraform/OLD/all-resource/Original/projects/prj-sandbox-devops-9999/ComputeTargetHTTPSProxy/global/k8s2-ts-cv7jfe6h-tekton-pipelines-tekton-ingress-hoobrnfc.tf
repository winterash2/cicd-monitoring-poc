resource "google_compute_target_https_proxy" "k8s2_ts_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc" {
  description      = "{\"kubernetes.io/ingress-name\": \"tekton-pipelines/tekton-ingress\"}"
  name             = "k8s2-ts-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc"
  project          = "prj-sandbox-devops-9999"
  quic_override    = "NONE"
  ssl_certificates = ["https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/sslCertificates/mcrt-28f363fb-5ee6-4951-9dd3-2a9128bd7867"]
  ssl_policy       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/sslPolicies/ssl-tls12-modern"
  url_map          = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/urlMaps/k8s2-um-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc"
}
# terraform import google_compute_target_https_proxy.k8s2_ts_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc projects/prj-sandbox-devops-9999/global/targetHttpsProxies/k8s2-ts-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc
