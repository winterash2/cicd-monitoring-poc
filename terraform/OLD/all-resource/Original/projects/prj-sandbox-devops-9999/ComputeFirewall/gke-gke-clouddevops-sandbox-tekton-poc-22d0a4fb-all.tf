resource "google_compute_firewall" "gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_all" {
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
  name          = "gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-all"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.84.0.0/14"]
  target_tags   = ["gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-node"]
}
# terraform import google_compute_firewall.gke_gke_clouddevops_sandbox_tekton_poc_22d0a4fb_all projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-clouddevops-sandbox-tekton-poc-22d0a4fb-all
