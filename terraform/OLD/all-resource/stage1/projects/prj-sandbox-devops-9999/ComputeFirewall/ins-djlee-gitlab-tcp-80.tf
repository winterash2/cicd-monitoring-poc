resource "google_compute_firewall" "ins_djlee_gitlab_tcp_80" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "ins-djlee-gitlab-tcp-80"
  network       = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority      = 1000
  project       = "prj-sandbox-devops-9999"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ins-djlee-gitlab-deployment"]
}
# terraform import google_compute_firewall.ins_djlee_gitlab_tcp_80 projects/prj-sandbox-devops-9999/global/firewalls/ins-djlee-gitlab-tcp-80
