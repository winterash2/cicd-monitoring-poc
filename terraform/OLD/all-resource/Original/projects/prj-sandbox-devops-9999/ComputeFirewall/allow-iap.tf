resource "google_compute_firewall" "allow_iap" {
  allow {
    protocol = "all"
  }

  direction     = "INGRESS"
  name          = "allow-iap"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["iap"]
}
# terraform import google_compute_firewall.allow_iap projects/prj-sandbox-devops-9999/global/firewalls/allow-iap
