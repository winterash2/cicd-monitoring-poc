resource "google_compute_firewall" "gke_moon_cluster_cli_4dcba798_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-moon-cluster-cli-4dcba798-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  priority      = 999
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.92.0.0/14"]
  source_tags   = ["gke-moon-cluster-cli-4dcba798-node"]
  target_tags   = ["gke-moon-cluster-cli-4dcba798-node"]
}
# terraform import google_compute_firewall.gke_moon_cluster_cli_4dcba798_inkubelet projects/prj-sandbox-devops-9999/global/firewalls/gke-moon-cluster-cli-4dcba798-inkubelet
