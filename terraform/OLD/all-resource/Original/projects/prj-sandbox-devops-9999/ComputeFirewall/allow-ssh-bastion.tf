resource "google_compute_firewall" "allow_ssh_bastion" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "allow-ssh-bastion"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.100.10.5", "10.178.15.196"]
  target_tags   = ["ssh-bastion"]
}
# terraform import google_compute_firewall.allow_ssh_bastion projects/prj-sandbox-devops-9999/global/firewalls/allow-ssh-bastion
