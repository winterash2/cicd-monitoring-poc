resource "google_compute_forwarding_rule" "a280fd41a7e0041e890d91523778f0b6" {
  description           = "{\"kubernetes.io/service-name\":\"argocd/argocd-server\"}"
  ip_address            = "34.64.52.185"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a280fd41a7e0041e890d91523778f0b6"
  network_tier          = "PREMIUM"
  port_range            = "80-443"
  project               = "prj-sandbox-devops-9999"
  region                = "asia-northeast3"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a280fd41a7e0041e890d91523778f0b6"
}
# terraform import google_compute_forwarding_rule.a280fd41a7e0041e890d91523778f0b6 projects/prj-sandbox-devops-9999/regions/asia-northeast3/forwardingRules/a280fd41a7e0041e890d91523778f0b6
