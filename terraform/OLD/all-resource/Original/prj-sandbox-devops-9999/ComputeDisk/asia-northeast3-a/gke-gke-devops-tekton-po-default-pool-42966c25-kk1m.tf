resource "google_compute_disk" "gke_gke_devops_tekton_po_default_pool_42966c25_kk1m" {
  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1256-gke200-cos-101-17162-40-52-v230120-c-cgpv1-pre"

  labels = {
    goog-gke-node   = ""
    goog-gke-volume = ""
  }

  name                      = "gke-gke-devops-tekton-po-default-pool-42966c25-kk1m"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.gke_gke_devops_tekton_po_default_pool_42966c25_kk1m projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/gke-gke-devops-tekton-po-default-pool-42966c25-kk1m
