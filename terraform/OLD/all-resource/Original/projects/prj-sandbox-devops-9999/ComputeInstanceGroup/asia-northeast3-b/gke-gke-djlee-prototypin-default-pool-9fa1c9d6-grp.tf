resource "google_compute_instance_group" "gke_gke_djlee_prototypin_default_pool_9fa1c9d6_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-djlee-prototypin-default-pool-9fa1c9d6-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instances/gke-gke-djlee-prototypin-default-pool-9fa1c9d6-v2tt", "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instances/gke-gke-djlee-prototypin-default-pool-9fa1c9d6-xf4t"]
  name        = "gke-gke-djlee-prototypin-default-pool-9fa1c9d6-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-b"
}
# terraform import google_compute_instance_group.gke_gke_djlee_prototypin_default_pool_9fa1c9d6_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instanceGroups/gke-gke-djlee-prototypin-default-pool-9fa1c9d6-grp
