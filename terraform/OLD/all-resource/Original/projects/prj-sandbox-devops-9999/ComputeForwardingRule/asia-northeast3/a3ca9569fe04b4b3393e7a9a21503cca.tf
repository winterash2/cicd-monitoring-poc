resource "google_compute_forwarding_rule" "a3ca9569fe04b4b3393e7a9a21503cca" {
  description           = "{\"kubernetes.io/service-name\":\"default/productpage\"}"
  ip_address            = "34.64.124.189"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a3ca9569fe04b4b3393e7a9a21503cca"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "prj-sandbox-devops-9999"
  region                = "asia-northeast3"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a3ca9569fe04b4b3393e7a9a21503cca"
}
# terraform import google_compute_forwarding_rule.a3ca9569fe04b4b3393e7a9a21503cca projects/prj-sandbox-devops-9999/regions/asia-northeast3/forwardingRules/a3ca9569fe04b4b3393e7a9a21503cca
