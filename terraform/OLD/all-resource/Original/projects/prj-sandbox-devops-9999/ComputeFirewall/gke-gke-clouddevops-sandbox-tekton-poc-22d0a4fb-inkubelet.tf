resource "google_compute_firewall" "gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 999
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.84.0.0/14"]
  source_tags   = ["gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-node"]
  target_tags   = ["gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-node"]
}
# terraform import google_compute_firewall.gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_inkubelet projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-inkubelet
