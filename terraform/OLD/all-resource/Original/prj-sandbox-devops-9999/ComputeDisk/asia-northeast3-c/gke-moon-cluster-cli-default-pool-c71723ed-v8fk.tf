resource "google_compute_disk" "gke_moon_cluster_cli_default_pool_c71723ed_v8fk" {
  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1255-gke2000-cos-101-17162-40-42-v230104-c-cgpv1-pre"

  labels = {
    goog-gke-node   = ""
    goog-gke-volume = ""
  }

  name                      = "gke-moon-cluster-cli-default-pool-c71723ed-v8fk"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 32
  type                      = "pd-standard"
  zone                      = "asia-northeast3-c"
}
# terraform import google_compute_disk.gke_moon_cluster_cli_default_pool_c71723ed_v8fk projects/prj-sandbox-devops-9999/zones/asia-northeast3-c/disks/gke-moon-cluster-cli-default-pool-c71723ed-v8fk
