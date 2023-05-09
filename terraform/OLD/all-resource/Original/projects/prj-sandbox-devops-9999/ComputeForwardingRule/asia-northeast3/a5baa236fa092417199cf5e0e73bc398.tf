resource "google_compute_forwarding_rule" "a5baa236fa092417199cf5e0e73bc398" {
  description           = "{\"kubernetes.io/service-name\":\"bookinfo/productpage\"}"
  ip_address            = "34.64.224.12"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a5baa236fa092417199cf5e0e73bc398"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "prj-sandbox-devops-9999"
  region                = "asia-northeast3"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a5baa236fa092417199cf5e0e73bc398"
}
# terraform import google_compute_forwarding_rule.a5baa236fa092417199cf5e0e73bc398 projects/prj-sandbox-devops-9999/regions/asia-northeast3/forwardingRules/a5baa236fa092417199cf5e0e73bc398
