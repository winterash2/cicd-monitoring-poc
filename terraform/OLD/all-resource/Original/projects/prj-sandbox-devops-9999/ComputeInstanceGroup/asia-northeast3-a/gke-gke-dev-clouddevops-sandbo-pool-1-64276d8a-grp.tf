resource "google_compute_instance_group" "gke_gke_dev_clouddevops_sandbo_pool_1_64276d8a_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-dev-clouddevops-sandbo-pool-1-64276d8a-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  name        = "gke-gke-dev-clouddevops-sandbo-pool-1-64276d8a-grp"

  named_port {
    name = "http"
    port = 80
  }

  network = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project = "prj-sandbox-devops-9999"
  zone    = "asia-northeast3-a"
}
# terraform import google_compute_instance_group.gke_gke_dev_clouddevops_sandbo_pool_1_64276d8a_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instanceGroups/gke-gke-dev-clouddevops-sandbo-pool-1-64276d8a-grp
