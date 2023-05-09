resource "google_compute_firewall" "gke_gke_djlee_prototyping_d4660811_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-djlee-prototyping-d4660811-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.3.0.0/16"]
  target_tags   = ["gke-gke-djlee-prototyping-d4660811-node"]
}
# terraform import google_compute_firewall.gke_gke_djlee_prototyping_d4660811_vms projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-djlee-prototyping-d4660811-vms
