resource "google_compute_firewall" "k8s_b644522af973d8a7_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/cluster-id\":\"b644522af973d8a7\"}"
  destination_ranges = ["34.64.196.115"]
  direction          = "INGRESS"
  name               = "k8s-b644522af973d8a7-node-http-hc"
  network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority           = 1000
  project            = "prj-sandbox-devops-9999"
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-gke-djlee-prototyping-d4660811-node"]
}
# terraform import google_compute_firewall.k8s_b644522af973d8a7_node_http_hc projects/prj-sandbox-devops-9999/global/firewalls/k8s-b644522af973d8a7-node-http-hc
