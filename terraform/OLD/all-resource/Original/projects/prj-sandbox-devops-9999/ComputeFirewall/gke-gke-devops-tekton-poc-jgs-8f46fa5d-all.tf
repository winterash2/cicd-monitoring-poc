resource "google_compute_firewall" "gke_gke_devops_tekton_poc_jgs_8f46fa5d_all" {
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
  name          = "gke-gke-devops-tekton-poc-jgs-8f46fa5d-all"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.72.0.0/14"]
  target_tags   = ["gke-gke-devops-tekton-poc-jgs-8f46fa5d-node"]
}
# terraform import google_compute_firewall.gke_gke_devops_tekton_poc_jgs_8f46fa5d_all projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-devops-tekton-poc-jgs-8f46fa5d-all
