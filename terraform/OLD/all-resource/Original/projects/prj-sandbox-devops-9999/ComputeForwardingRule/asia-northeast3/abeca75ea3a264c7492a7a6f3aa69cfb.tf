resource "google_compute_forwarding_rule" "abeca75ea3a264c7492a7a6f3aa69cfb" {
  description           = "{\"kubernetes.io/service-name\":\"onlineboutique/frontend-external\"}"
  ip_address            = "34.64.196.115"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "abeca75ea3a264c7492a7a6f3aa69cfb"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "prj-sandbox-devops-9999"
  region                = "asia-northeast3"
  target                = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/regions/asia-northeast3/targetPools/abeca75ea3a264c7492a7a6f3aa69cfb"
}
# terraform import google_compute_forwarding_rule.abeca75ea3a264c7492a7a6f3aa69cfb projects/prj-sandbox-devops-9999/regions/asia-northeast3/forwardingRules/abeca75ea3a264c7492a7a6f3aa69cfb
