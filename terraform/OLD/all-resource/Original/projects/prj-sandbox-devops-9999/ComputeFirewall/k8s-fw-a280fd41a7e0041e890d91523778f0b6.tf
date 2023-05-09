resource "google_compute_firewall" "k8s_fw_a280fd41a7e0041e890d91523778f0b6" {
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"argocd/argocd-server\", \"kubernetes.io/service-ip\":\"34.64.52.185\"}"
  destination_ranges = ["34.64.52.185"]
  direction          = "INGRESS"
  name               = "k8s-fw-a280fd41a7e0041e890d91523778f0b6"
  network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority           = 1000
  project            = "prj-sandbox-devops-9999"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.k8s_fw_a280fd41a7e0041e890d91523778f0b6 projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-a280fd41a7e0041e890d91523778f0b6
