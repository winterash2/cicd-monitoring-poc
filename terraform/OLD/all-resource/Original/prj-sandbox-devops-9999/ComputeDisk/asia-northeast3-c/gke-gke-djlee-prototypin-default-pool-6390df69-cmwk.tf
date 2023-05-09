resource "google_compute_disk" "gke_gke_djlee_prototypin_default_pool_6390df69_cmwk" {
  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1255-gke1500-cos-101-17162-40-42-v221228-c-cgpv1-pre"

  labels = {
    goog-gke-volume = ""
    goog-gke-node   = ""
  }

  name                      = "gke-gke-djlee-prototypin-default-pool-6390df69-cmwk"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-c"
}
# terraform import google_compute_disk.gke_gke_djlee_prototypin_default_pool_6390df69_cmwk projects/prj-sandbox-devops-9999/zones/asia-northeast3-c/disks/gke-gke-djlee-prototypin-default-pool-6390df69-cmwk
