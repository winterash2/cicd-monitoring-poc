resource "google_compute_firewall" "k8s_f67ab38a427afc6b_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/cluster-id\":\"f67ab38a427afc6b\"}"
  destination_ranges = ["34.64.124.189"]
  direction          = "INGRESS"
  name               = "k8s-f67ab38a427afc6b-node-http-hc"
  network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority           = 1000
  project            = "prj-sandbox-devops-9999"
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.k8s_f67ab38a427afc6b_node_http_hc projects/prj-sandbox-devops-9999/global/firewalls/k8s-f67ab38a427afc6b-node-http-hc
