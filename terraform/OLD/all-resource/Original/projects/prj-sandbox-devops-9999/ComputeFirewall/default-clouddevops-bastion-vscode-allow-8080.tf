resource "google_compute_firewall" "default_clouddevops_bastion_vscode_allow_8080" {
  allow {
    ports    = ["8080"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "default-clouddevops-bastion-vscode-allow-8080"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags   = ["vscode"]
}
# terraform import google_compute_firewall.default_clouddevops_bastion_vscode_allow_8080 projects/prj-sandbox-devops-9999/global/firewalls/default-clouddevops-bastion-vscode-allow-8080
