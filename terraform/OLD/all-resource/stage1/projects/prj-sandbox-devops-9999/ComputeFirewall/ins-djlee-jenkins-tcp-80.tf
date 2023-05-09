resource "google_compute_firewall" "ins_djlee_jenkins_tcp_80" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "ins-djlee-jenkins-tcp-80"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ins-djlee-jenkins-deployment"]
}
# terraform import google_compute_firewall.ins_djlee_jenkins_tcp_80 projects/prj-sandbox-devops-9999/global/firewalls/ins-djlee-jenkins-tcp-80
