resource "google_compute_instance_group" "gke_moon_cluster_cli_default_pool_c71723ed_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-moon-cluster-cli-default-pool-c71723ed-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-c/instances/gke-moon-cluster-cli-default-pool-c71723ed-v8fk"]
  name        = "gke-moon-cluster-cli-default-pool-c71723ed-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-c"
}
# terraform import google_compute_instance_group.gke_moon_cluster_cli_default_pool_c71723ed_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-c/instanceGroups/gke-moon-cluster-cli-default-pool-c71723ed-grp
