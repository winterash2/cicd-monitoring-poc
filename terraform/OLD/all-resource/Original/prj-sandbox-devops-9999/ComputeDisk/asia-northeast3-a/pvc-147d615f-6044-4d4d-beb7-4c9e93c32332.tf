resource "google_compute_disk" "pvc_147d615f_6044_4d4d_beb7_4c9e93c32332" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-147d615f-6044-4d4d-beb7-4c9e93c32332\",\"kubernetes.io/created-for/pvc/name\":\"pvc-23583b863e\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-147d615f-6044-4d4d-beb7-4c9e93c32332"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_147d615f_6044_4d4d_beb7_4c9e93c32332 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-147d615f-6044-4d4d-beb7-4c9e93c32332
