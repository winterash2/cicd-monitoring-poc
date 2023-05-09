resource "google_compute_instance_group" "gke_gke_devops_tekton_po_default_pool_42966c25_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-devops-tekton-po-default-pool-42966c25-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/gke-gke-devops-tekton-po-default-pool-42966c25-kk1m"]
  name        = "gke-gke-devops-tekton-po-default-pool-42966c25-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-a"
}
# terraform import google_compute_instance_group.gke_gke_devops_tekton_po_default_pool_42966c25_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instanceGroups/gke-gke-devops-tekton-po-default-pool-42966c25-grp
