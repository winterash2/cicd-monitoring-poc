resource "google_compute_firewall" "moon_ssh_terraform" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "moon-ssh-terraform"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["moonssh"]
}
# terraform import google_compute_firewall.moon_ssh_terraform projects/prj-sandbox-devops-9999/global/firewalls/moon-ssh-terraform
