resource "google_compute_firewall" "djlee_allow_from_gitlab_to_jenkins" {
  allow {
    protocol = "tcp"
  }

  direction   = "INGRESS"
  name        = "djlee-allow-from-gitlab-to-jenkins"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  priority    = 1000
  project     = "prj-sandbox-devops-9999"
  source_tags = ["gitlab"]
  target_tags = ["jenkins"]
}
# terraform import google_compute_firewall.djlee_allow_from_gitlab_to_jenkins projects/prj-sandbox-devops-9999/global/firewalls/djlee-allow-from-gitlab-to-jenkins
