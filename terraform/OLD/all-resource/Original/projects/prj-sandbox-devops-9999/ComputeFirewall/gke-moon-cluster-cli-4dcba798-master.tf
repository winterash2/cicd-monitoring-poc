resource "google_compute_firewall" "gke_moon_cluster_cli_4dcba798_master" {
  allow {
    ports    = ["10250", "443"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-moon-cluster-cli-4dcba798-master"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["123.123.123.0/28"]
  target_tags   = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.gke_moon_cluster_cli_4dcba798_master projects/prj-sandbox-devops-9999/global/firewalls/gke-moon-cluster-cli-4dcba798-master
