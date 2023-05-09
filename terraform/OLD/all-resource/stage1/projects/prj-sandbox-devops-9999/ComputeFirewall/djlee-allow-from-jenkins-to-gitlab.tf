resource "google_compute_firewall" "djlee_allow_from_jenkins_to_gitlab" {
  allow {
    protocol = "tcp"
  }

  direction   = "INGRESS"
  name        = "djlee-allow-from-jenkins-to-gitlab"
  network     = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  priority    = 1000
  project     = "prj-sandbox-devops-9999"
  source_tags = ["jenkins"]
  target_tags = ["gitlab"]
}
# terraform import google_compute_firewall.djlee_allow_from_jenkins_to_gitlab projects/prj-sandbox-devops-9999/global/firewalls/djlee-allow-from-jenkins-to-gitlab
