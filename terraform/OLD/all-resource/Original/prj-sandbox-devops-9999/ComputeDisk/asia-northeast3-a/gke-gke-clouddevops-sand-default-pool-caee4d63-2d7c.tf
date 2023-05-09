resource "google_compute_disk" "gke_gke_clouddevops_sand_default_pool_caee4d63_2d7c" {
  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1255-gke2000-cos-101-17162-40-42-v230104-c-cgpv1-pre"

  labels = {
    goog-gke-node   = ""
    goog-gke-volume = ""
  }

  name                      = "gke-gke-clouddevops-sand-default-pool-caee4d63-2d7c"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.gke_gke_clouddevops_sand_default_pool_caee4d63_2d7c projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/gke-gke-clouddevops-sand-default-pool-caee4d63-2d7c
