resource "google_compute_firewall" "allow_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/shared-vpc-host-project"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["host-prj-ssh"]
}
# terraform import google_compute_firewall.allow_ssh projects/prj-sandbox-devops-9999/global/firewalls/allow-ssh
