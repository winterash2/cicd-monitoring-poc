resource "google_compute_disk" "gke_gke_djlee_prototypin_default_pool_3f0a6351_46gl" {
  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1255-gke1500-cos-101-17162-40-42-v221228-c-cgpv1-pre"

  labels = {
    goog-gke-volume = ""
    goog-gke-node   = ""
  }

  name                      = "gke-gke-djlee-prototypin-default-pool-3f0a6351-46gl"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.gke_gke_djlee_prototypin_default_pool_3f0a6351_46gl projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/gke-gke-djlee-prototypin-default-pool-3f0a6351-46gl
