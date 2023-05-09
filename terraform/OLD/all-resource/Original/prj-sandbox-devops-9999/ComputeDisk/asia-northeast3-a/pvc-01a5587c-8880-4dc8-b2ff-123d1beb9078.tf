resource "google_compute_disk" "pvc_01a5587c_8880_4dc8_b2ff_123d1beb9078" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-01a5587c-8880-4dc8-b2ff-123d1beb9078\",\"kubernetes.io/created-for/pvc/name\":\"pvc-39324e0e88\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-01a5587c-8880-4dc8-b2ff-123d1beb9078"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_01a5587c_8880_4dc8_b2ff_123d1beb9078 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-01a5587c-8880-4dc8-b2ff-123d1beb9078
