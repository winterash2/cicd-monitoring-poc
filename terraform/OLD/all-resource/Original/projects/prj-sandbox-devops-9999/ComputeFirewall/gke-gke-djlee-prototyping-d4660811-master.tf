resource "google_compute_firewall" "gke_gke_djlee_prototyping_d4660811_master" {
  allow {
    ports    = ["10250", "443"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-djlee-prototyping-d4660811-master"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.2.0.0/28"]
  target_tags   = ["gke-gke-djlee-prototyping-d4660811-node"]
}
# terraform import google_compute_firewall.gke_gke_djlee_prototyping_d4660811_master projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-djlee-prototyping-d4660811-master
