resource "google_compute_instance_group" "moon_mig" {
  description = "This instance group is controlled by Instance Group Manager 'moon-mig'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  name        = "moon-mig"

  named_port {
    name = "http"
    port = 80
  }

  named_port {
    name = "https"
    port = 443
  }

  network = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project = "prj-sandbox-devops-9999"
  zone    = "asia-northeast3-a"
}
# terraform import google_compute_instance_group.moon_mig projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instanceGroups/moon-mig
