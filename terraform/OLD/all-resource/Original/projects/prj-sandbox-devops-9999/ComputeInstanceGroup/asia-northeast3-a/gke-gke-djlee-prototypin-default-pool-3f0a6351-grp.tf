resource "google_compute_instance_group" "gke_gke_djlee_prototypin_default_pool_3f0a6351_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-djlee-prototypin-default-pool-3f0a6351-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/gke-gke-djlee-prototypin-default-pool-3f0a6351-46gl", "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/gke-gke-djlee-prototypin-default-pool-3f0a6351-6phd"]
  name        = "gke-gke-djlee-prototypin-default-pool-3f0a6351-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-a"
}
# terraform import google_compute_instance_group.gke_gke_djlee_prototypin_default_pool_3f0a6351_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instanceGroups/gke-gke-djlee-prototypin-default-pool-3f0a6351-grp
