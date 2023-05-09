resource "google_compute_firewall" "k8s_fw_ab58dca7b0bcd45258afb30f1a0bc65e" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }

  description   = "{\"kubernetes.io/service-name\":\"tekton-pipelines/tekton-dashboard-lb\", \"kubernetes.io/service-ip\":\"34.64.239.78\"}"
  direction     = "INGRESS"
  name          = "k8s-fw-ab58dca7b0bcd45258afb30f1a0bc65e"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-gke-dev-clouddevops-sandbox-tekton-d59696cd-node"]
}
# terraform import google_compute_firewall.k8s_fw_ab58dca7b0bcd45258afb30f1a0bc65e projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-ab58dca7b0bcd45258afb30f1a0bc65e
