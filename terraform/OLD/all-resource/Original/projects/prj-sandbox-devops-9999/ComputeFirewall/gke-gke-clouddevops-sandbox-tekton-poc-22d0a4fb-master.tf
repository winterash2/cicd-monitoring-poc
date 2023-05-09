resource "google_compute_firewall" "gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_master" {
  allow {
    ports    = ["10250", "443"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-master"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["192.168.1.0/28"]
  target_tags   = ["gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-node"]
}
# terraform import google_compute_firewall.gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_master projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-master
