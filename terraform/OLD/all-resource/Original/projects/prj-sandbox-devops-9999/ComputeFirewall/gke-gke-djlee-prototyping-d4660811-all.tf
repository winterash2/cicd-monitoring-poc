resource "google_compute_firewall" "gke_gke_djlee_prototyping_d4660811_all" {
  allow {
    protocol = "ah"
  }

  allow {
    protocol = "esp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "sctp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-djlee-prototyping-d4660811-all"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.228.0.0/14"]
  target_tags   = ["gke-gke-djlee-prototyping-d4660811-node"]
}
# terraform import google_compute_firewall.gke_gke_djlee_prototyping_d4660811_all projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-djlee-prototyping-d4660811-all
