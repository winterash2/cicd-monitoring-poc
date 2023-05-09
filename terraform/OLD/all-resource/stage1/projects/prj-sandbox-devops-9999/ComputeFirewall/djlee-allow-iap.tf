resource "google_compute_firewall" "djlee_allow_iap" {
  allow {
    protocol = "tcp"
  }

  direction = "INGRESS"

  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }

  name          = "djlee-allow-iap"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 900
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["gke-djlee-node", "iap"]
}
# terraform import google_compute_firewall.djlee_allow_iap projects/prj-sandbox-devops-9999/global/firewalls/djlee-allow-iap
