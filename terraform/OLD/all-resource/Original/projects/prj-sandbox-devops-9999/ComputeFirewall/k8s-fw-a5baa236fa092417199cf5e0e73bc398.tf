resource "google_compute_firewall" "k8s_fw_a5baa236fa092417199cf5e0e73bc398" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"bookinfo/productpage\", \"kubernetes.io/service-ip\":\"34.64.224.12\"}"
  destination_ranges = ["34.64.224.12"]
  direction          = "INGRESS"
  name               = "k8s-fw-a5baa236fa092417199cf5e0e73bc398"
  network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority           = 1000
  project            = "prj-sandbox-devops-9999"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.k8s_fw_a5baa236fa092417199cf5e0e73bc398 projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-a5baa236fa092417199cf5e0e73bc398
