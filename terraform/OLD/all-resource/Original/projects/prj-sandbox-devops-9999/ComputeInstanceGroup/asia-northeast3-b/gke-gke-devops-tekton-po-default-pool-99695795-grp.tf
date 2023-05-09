resource "google_compute_instance_group" "gke_gke_devops_tekton_po_default_pool_99695795_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-devops-tekton-po-default-pool-99695795-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instances/gke-gke-devops-tekton-po-default-pool-99695795-4tt3"]
  name        = "gke-gke-devops-tekton-po-default-pool-99695795-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project     = "prj-sandbox-devops-9999"
  zone        = "asia-northeast3-b"
}
# terraform import google_compute_instance_group.gke_gke_devops_tekton_po_default_pool_99695795_grp projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instanceGroups/gke-gke-devops-tekton-po-default-pool-99695795-grp
