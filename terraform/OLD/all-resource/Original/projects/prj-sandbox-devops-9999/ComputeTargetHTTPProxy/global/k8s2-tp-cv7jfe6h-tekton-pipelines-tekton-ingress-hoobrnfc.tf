resource "google_compute_target_http_proxy" "k8s2_tp_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc" {
  description = "{\"kubernetes.io/ingress-name\": \"tekton-pipelines/tekton-ingress\"}"
  name        = "k8s2-tp-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc"
  project     = "prj-sandbox-devops-9999"
  url_map     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/urlMaps/k8s2-um-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc"
}
# terraform import google_compute_target_http_proxy.k8s2_tp_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc projects/prj-sandbox-devops-9999/global/targetHttpProxies/k8s2-tp-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc
