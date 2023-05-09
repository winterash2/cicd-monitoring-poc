resource "google_compute_firewall" "default_allow_icmp" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow ICMP from anywhere"
  direction     = "INGRESS"
  name          = "default-allow-icmp"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 65534
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.default_allow_icmp projects/prj-sandbox-devops-9999/global/firewalls/default-allow-icmp
