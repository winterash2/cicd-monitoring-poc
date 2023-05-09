resource "google_compute_firewall" "gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_vms" {
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
  name          = "gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.178.0.0/20"]
  target_tags   = ["gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-node"]
}
# terraform import google_compute_firewall.gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_vms projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-vms
