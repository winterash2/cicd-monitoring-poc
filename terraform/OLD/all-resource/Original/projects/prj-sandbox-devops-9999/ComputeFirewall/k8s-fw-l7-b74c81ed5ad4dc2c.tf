resource "google_compute_firewall" "k8s_fw_l7__b74c81ed5ad4dc2c" {
  allow {
    ports    = ["30000-32767", "8080"]
    protocol = "tcp"
  }

  description   = "GCE L7 firewall rule"
  direction     = "INGRESS"
  name          = "k8s-fw-l7--b74c81ed5ad4dc2c"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.k8s_fw_l7__b74c81ed5ad4dc2c projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-l7--b74c81ed5ad4dc2c
