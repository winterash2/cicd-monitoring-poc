resource "google_compute_global_forwarding_rule" "k8s2_fr_woxipstn_default_tekton_eventlistener_nufjrexr" {
  description           = "{\"kubernetes.io/ingress-name\": \"default/tekton-eventlistener\"}"
  ip_address            = "34.160.247.73"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "k8s2-fr-woxipstn-default-tekton-eventlistener-nufjrexr"
  port_range            = "80-80"
  project               = "prj-sandbox-devops-9999"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/targetHttpProxies/k8s2-tp-woxipstn-default-tekton-eventlistener-nufjrexr"
}
# terraform import google_compute_global_forwarding_rule.k8s2_fr_woxipstn_default_tekton_eventlistener_nufjrexr projects/prj-sandbox-devops-9999/global/forwardingRules/k8s2-fr-woxipstn-default-tekton-eventlistener-nufjrexr
