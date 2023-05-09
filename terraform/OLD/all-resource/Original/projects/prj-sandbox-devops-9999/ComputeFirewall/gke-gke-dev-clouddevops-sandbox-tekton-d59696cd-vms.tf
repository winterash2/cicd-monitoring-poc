resource "google_compute_firewall" "gke_gke_dev_clouddevops_sandbox_tekton_d59696cd_vms" {
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
  name          = "gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.gke_gke_dev_clouddevops_sandbox_tekton_d59696cd_vms projects/prj-sandbox-devops-9999/global/firewalls/gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-vms
