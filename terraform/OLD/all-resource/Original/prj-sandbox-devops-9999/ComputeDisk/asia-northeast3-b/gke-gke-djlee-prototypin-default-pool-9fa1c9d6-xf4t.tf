resource "google_compute_disk" "gke_gke_djlee_prototypin_default_pool_9fa1c9d6_xf4t" {
  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1255-gke1500-cos-101-17162-40-42-v221228-c-cgpv1-pre"

  labels = {
    goog-gke-volume = ""
    goog-gke-node   = ""
  }

  name                      = "gke-gke-djlee-prototypin-default-pool-9fa1c9d6-xf4t"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-b"
}
# terraform import google_compute_disk.gke_gke_djlee_prototypin_default_pool_9fa1c9d6_xf4t projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/disks/gke-gke-djlee-prototypin-default-pool-9fa1c9d6-xf4t
