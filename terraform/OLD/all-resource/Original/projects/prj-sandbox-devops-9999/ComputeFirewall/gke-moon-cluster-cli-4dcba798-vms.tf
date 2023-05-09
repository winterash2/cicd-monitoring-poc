resource "google_compute_firewall" "gke_moon_cluster_cli_4dcba798_vms" {
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
  name          = "gke-moon-cluster-cli-4dcba798-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.178.0.0/20"]
  target_tags   = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.gke_moon_cluster_cli_4dcba798_vms projects/prj-sandbox-devops-9999/global/firewalls/gke-moon-cluster-cli-4dcba798-vms
