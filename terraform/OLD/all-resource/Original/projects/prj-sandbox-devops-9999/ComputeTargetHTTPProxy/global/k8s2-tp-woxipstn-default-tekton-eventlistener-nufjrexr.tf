resource "google_compute_target_http_proxy" "k8s2_tp_woxipstn_default_tekton_eventlistener_nufjrexr" {
  description = "{\"kubernetes.io/ingress-name\": \"default/tekton-eventlistener\"}"
  name        = "k8s2-tp-woxipstn-default-tekton-eventlistener-nufjrexr"
  project     = "prj-sandbox-devops-9999"
  url_map     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/urlMaps/k8s2-um-woxipstn-default-tekton-eventlistener-nufjrexr"
}
# terraform import google_compute_target_http_proxy.k8s2_tp_woxipstn_default_tekton_eventlistener_nufjrexr projects/prj-sandbox-devops-9999/global/targetHttpProxies/k8s2-tp-woxipstn-default-tekton-eventlistener-nufjrexr
