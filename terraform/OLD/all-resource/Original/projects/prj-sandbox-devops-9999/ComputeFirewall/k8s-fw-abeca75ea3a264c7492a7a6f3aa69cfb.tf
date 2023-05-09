resource "google_compute_firewall" "k8s_fw_abeca75ea3a264c7492a7a6f3aa69cfb" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"onlineboutique/frontend-external\", \"kubernetes.io/service-ip\":\"34.64.196.115\"}"
  destination_ranges = ["34.64.196.115"]
  direction          = "INGRESS"
  name               = "k8s-fw-abeca75ea3a264c7492a7a6f3aa69cfb"
  network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority           = 1000
  project            = "prj-sandbox-devops-9999"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-gke-djlee-prototyping-d4660811-node"]
}
# terraform import google_compute_firewall.k8s_fw_abeca75ea3a264c7492a7a6f3aa69cfb projects/prj-sandbox-devops-9999/global/firewalls/k8s-fw-abeca75ea3a264c7492a7a6f3aa69cfb
