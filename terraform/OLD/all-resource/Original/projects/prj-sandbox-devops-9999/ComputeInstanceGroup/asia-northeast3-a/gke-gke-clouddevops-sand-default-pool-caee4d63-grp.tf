resource "google_compute_instance_group" "gke_gke_clouddevops_sand_default_pool_caee4d63_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-clouddevops-sand-default-pool-caee4d63-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/gke-gke-clouddevops-sand-default-pool-caee4d63-2d7c"]
  name        = "gke-gke-clouddevops-sand-default-pool-caee4d63-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-a"
}
# terraform import google_compute_instance_group.gke_gke_clouddevops_sand_default_pool_caee4d63_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instanceGroups/gke-gke-clouddevops-sand-default-pool-caee4d63-grp
