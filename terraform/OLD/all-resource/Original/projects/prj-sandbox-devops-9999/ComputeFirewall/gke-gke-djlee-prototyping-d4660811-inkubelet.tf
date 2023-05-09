resource "google_compute_firewall" "gke_gke_djlee_prototyping_d4660811_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-djlee-prototyping-d4660811-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 999
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.228.0.0/14"]
  source_tags   = ["gke-gke-djlee-prototyping-d4660811-node"]
  target_tags   = ["gke-gke-djlee-prototyping-d4660811-node"]
}
# terraform import google_compute_firewall.gke_gke_djlee_prototyping_d4660811_inkubelet projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-djlee-prototyping-d4660811-inkubelet
