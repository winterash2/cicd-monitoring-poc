resource "google_compute_firewall" "djlee_prototyping_allow_http" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "djlee-prototyping-allow-http"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}
# terraform import google_compute_firewall.djlee_prototyping_allow_http projects/prj-sandbox-devops-9999/global/firewalls/djlee-prototyping-allow-http
