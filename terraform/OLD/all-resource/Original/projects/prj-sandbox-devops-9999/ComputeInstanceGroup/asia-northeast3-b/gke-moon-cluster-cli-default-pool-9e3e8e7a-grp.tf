resource "google_compute_instance_group" "gke_moon_cluster_cli_default_pool_9e3e8e7a_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-moon-cluster-cli-default-pool-9e3e8e7a-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instances/gke-moon-cluster-cli-default-pool-9e3e8e7a-g9cj"]
  name        = "gke-moon-cluster-cli-default-pool-9e3e8e7a-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-b"
}
# terraform import google_compute_instance_group.gke_moon_cluster_cli_default_pool_9e3e8e7a_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instanceGroups/gke-moon-cluster-cli-default-pool-9e3e8e7a-grp
