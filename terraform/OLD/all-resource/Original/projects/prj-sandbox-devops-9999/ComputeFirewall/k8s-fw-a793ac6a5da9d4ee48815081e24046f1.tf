resource "google_compute_firewall" "k8s_fw_a793ac6a5da9d4ee48815081e24046f1" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }

  description   = "{\"kubernetes.io/service-name\":\"anthos-identity-service/gke-oidc-envoy\", \"kubernetes.io/service-ip\":\"34.64.160.239\"}"
  direction     = "INGRESS"
  name          = "k8s-fw-a793ac6a5da9d4ee48815081e24046f1"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.k8s_fw_a793ac6a5da9d4ee48815081e24046f1 projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-a793ac6a5da9d4ee48815081e24046f1
