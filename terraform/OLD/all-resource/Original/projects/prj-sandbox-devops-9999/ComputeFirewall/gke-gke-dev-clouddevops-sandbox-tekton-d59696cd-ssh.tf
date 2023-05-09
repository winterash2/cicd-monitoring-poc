resource "google_compute_firewall" "gke_gke_dev_clouddevops_sandbox_tekton_d59696cd_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["34.64.117.138/32", "34.64.121.199/32", "34.64.124.202/32"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.gke_gke_dev_clouddevops_sandbox_tekton_d59696cd_ssh projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-ssh
