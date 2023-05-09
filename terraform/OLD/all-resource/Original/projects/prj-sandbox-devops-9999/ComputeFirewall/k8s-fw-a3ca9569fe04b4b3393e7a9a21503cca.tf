resource "google_compute_firewall" "k8s_fw_a3ca9569fe04b4b3393e7a9a21503cca" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"default/productpage\", \"kubernetes.io/service-ip\":\"34.64.124.189\"}"
  destination_ranges = ["34.64.124.189"]
  direction          = "INGRESS"
  name               = "k8s-fw-a3ca9569fe04b4b3393e7a9a21503cca"
  network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority           = 1000
  project            = "prj-sandbox-devops-9999"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.k8s_fw_a3ca9569fe04b4b3393e7a9a21503cca projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-a3ca9569fe04b4b3393e7a9a21503cca
