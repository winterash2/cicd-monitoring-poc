resource "google_compute_forwarding_rule" "a793ac6a5da9d4ee48815081e24046f1" {
  description           = "{\"kubernetes.io/service-name\":\"anthos-identity-service/gke-oidc-envoy\"}"
  ip_address            = "34.64.160.239"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a793ac6a5da9d4ee48815081e24046f1"
  network_tier          = "PREMIUM"
  port_range            = "443-443"
  project               = "prj-sandbox-devops-9999"
  region                = "asia-northeast3"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/a793ac6a5da9d4ee48815081e24046f1"
}
# terraform import google_compute_forwarding_rule.a793ac6a5da9d4ee48815081e24046f1 projects/prj-sandbox-devops-9999/regions/asia-northeast3/forwardingRules/a793ac6a5da9d4ee48815081e24046f1
