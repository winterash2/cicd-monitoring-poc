resource "google_compute_firewall" "gke_gke_devops_tekton_poc_jgs_8f46fa5d_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-devops-tekton-poc-jgs-8f46fa5d-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-gke-devops-tekton-poc-jgs-8f46fa5d-node"]
}
# terraform import google_compute_firewall.gke_gke_devops_tekton_poc_jgs_8f46fa5d_exkubelet projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-devops-tekton-poc-jgs-8f46fa5d-exkubelet
