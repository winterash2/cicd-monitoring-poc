resource "google_compute_forwarding_rule" "a2a9f63a191d447b2bf2c19a019e0c7b" {
  description           = "{\"kubernetes.io/service-name\":\"ingress-nginx/ingress-nginx-controller\"}"
  ip_address            = "34.64.195.133"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a2a9f63a191d447b2bf2c19a019e0c7b"
  network_tier          = "PREMIUM"
  port_range            = "80-443"
  project               = "prj-sandbox-devops-9999"
  region                = "asia-northeast3"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a2a9f63a191d447b2bf2c19a019e0c7b"
}
# terraform import google_compute_forwarding_rule.a2a9f63a191d447b2bf2c19a019e0c7b projects/prj-sandbox-devops-9999/regions/asia-northeast3/forwardingRules/a2a9f63a191d447b2bf2c19a019e0c7b
