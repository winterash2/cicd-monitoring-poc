resource "google_compute_firewall" "gke_gke_dev_clouddevops_sandbox_tekton_d59696cd_all" {
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
  name          = "gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-all"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.108.0.0/14"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.gke_gke_dev_clouddevops_sandbox_tekton_d59696cd_all projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-all
