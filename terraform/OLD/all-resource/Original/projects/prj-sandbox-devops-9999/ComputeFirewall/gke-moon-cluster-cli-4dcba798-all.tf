resource "google_compute_firewall" "gke_moon_cluster_cli_4dcba798_all" {
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
  name          = "gke-moon-cluster-cli-4dcba798-all"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.92.0.0/14"]
  target_tags   = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.gke_moon_cluster_cli_4dcba798_all projects/prj-sandbox-devops-9999/global/firewalls/gke-moon-cluster-cli-4dcba798-all
