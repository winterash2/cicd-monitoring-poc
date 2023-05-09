resource "google_compute_firewall" "k8s_fw_l7__b713ed6709598c5a" {
  allow {
    ports    = ["30000-32767", "9097"]
    protocol = "tcp"
  }

  description   = "GCE L7 firewall rule"
  direction     = "INGRESS"
  name          = "k8s-fw-l7--b713ed6709598c5a"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  target_tags   = ["gke-gke-devops-tekton-poc-jgs-8f46fa5d-node"]
}
# terraform import google_compute_firewall.k8s_fw_l7__b713ed6709598c5a projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-l7--b713ed6709598c5a
