resource "google_compute_disk" "pvc_8a6c6bb9_d577_452a_8a25_3aa7fd269c2b" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-8a6c6bb9-d577-452a-8a25-3aa7fd269c2b\",\"kubernetes.io/created-for/pvc/name\":\"pvc-526a1c4c86\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-8a6c6bb9-d577-452a-8a25-3aa7fd269c2b"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_8a6c6bb9_d577_452a_8a25_3aa7fd269c2b projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-8a6c6bb9-d577-452a-8a25-3aa7fd269c2b
