resource "google_compute_instance_group" "gke_gke_djlee_prototypin_default_pool_6390df69_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-djlee-prototypin-default-pool-6390df69-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-c/instances/gke-gke-djlee-prototypin-default-pool-6390df69-cmwk"]
  name        = "gke-gke-djlee-prototypin-default-pool-6390df69-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-c"
}
# terraform import google_compute_instance_group.gke_gke_djlee_prototypin_default_pool_6390df69_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-c/instanceGroups/gke-gke-djlee-prototypin-default-pool-6390df69-grp
