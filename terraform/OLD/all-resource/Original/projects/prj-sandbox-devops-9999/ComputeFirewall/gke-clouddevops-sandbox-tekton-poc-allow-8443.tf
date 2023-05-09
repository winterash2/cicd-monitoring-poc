resource "google_compute_firewall" "gke_clouddevops_sandbox_tekton_poc_allow_8443" {
  allow {
    ports    = ["8443"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-clouddevops-sandbox-tekton-poc-allow-8443"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["192.168.1.0/28", "192.168.2.0/28"]
  target_tags   = ["gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-node", "gke-gke-devops-tekton-poc-jgs-8f46fa5d-node"]
}
# terraform import google_compute_firewall.gke_clouddevops_sandbox_tekton_poc_allow_8443 projects/prj-sandbox-devops-9999/global/firewalls/gke-clouddevops-sandbox-tekton-poc-allow-8443
