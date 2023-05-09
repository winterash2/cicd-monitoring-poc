resource "google_compute_firewall" "k8s_fw_a2a9f63a191d447b2bf2c19a019e0c7b" {
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }

  description   = "{\"kubernetes.io/service-name\":\"ingress-nginx/ingress-nginx-controller\", \"kubernetes.io/service-ip\":\"34.64.195.133\"}"
  direction     = "INGRESS"
  name          = "k8s-fw-a2a9f63a191d447b2bf2c19a019e0c7b"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.k8s_fw_a2a9f63a191d447b2bf2c19a019e0c7b projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-a2a9f63a191d447b2bf2c19a019e0c7b
