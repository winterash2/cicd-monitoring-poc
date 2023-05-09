resource "google_compute_firewall" "k8s_b74c81ed5ad4dc2c_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description   = "{\"kubernetes.io/cluster-id\":\"b74c81ed5ad4dc2c\"}"
  direction     = "INGRESS"
  name          = "k8s-b74c81ed5ad4dc2c-node-http-hc"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.k8s_b74c81ed5ad4dc2c_node_http_hc projects/prj-sandbox-devops-9999/global/firewalls/k8s-b74c81ed5ad4dc2c-node-http-hc
