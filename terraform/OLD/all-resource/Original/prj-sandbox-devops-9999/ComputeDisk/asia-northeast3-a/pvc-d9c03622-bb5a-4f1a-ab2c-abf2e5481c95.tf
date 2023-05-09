resource "google_compute_disk" "pvc_d9c03622_bb5a_4f1a_ab2c_abf2e5481c95" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-d9c03622-bb5a-4f1a-ab2c-abf2e5481c95\",\"kubernetes.io/created-for/pvc/name\":\"pvc-2d084c2aed\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-d9c03622-bb5a-4f1a-ab2c-abf2e5481c95"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_d9c03622_bb5a_4f1a_ab2c_abf2e5481c95 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-d9c03622-bb5a-4f1a-ab2c-abf2e5481c95
