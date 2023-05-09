resource "google_compute_firewall" "gke_gke_devops_tekton_poc_jgs_8f46fa5d_vms" {
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
  name          = "gke-gke-devops-tekton-poc-jgs-8f46fa5d-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.178.0.0/20"]
  target_tags   = ["gke-gke-devops-tekton-poc-jgs-8f46fa5d-node"]
}
# terraform import google_compute_firewall.gke_gke_devops_tekton_poc_jgs_8f46fa5d_vms projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-devops-tekton-poc-jgs-8f46fa5d-vms
