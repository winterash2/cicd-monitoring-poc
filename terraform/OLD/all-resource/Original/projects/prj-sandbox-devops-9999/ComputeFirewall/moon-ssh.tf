resource "google_compute_firewall" "moon_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "moon-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["moonssh"]
}
# terraform import google_compute_firewall.moon_ssh projects/prj-sandbox-devops-9999/global/firewalls/moon-ssh
