resource "google_compute_disk" "pvc_4e307a95_588c_47d5_8401_fe5db6d46b11" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-4e307a95-588c-47d5-8401-fe5db6d46b11\",\"kubernetes.io/created-for/pvc/name\":\"pvc-8908e2573b\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-4e307a95-588c-47d5-8401-fe5db6d46b11"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_4e307a95_588c_47d5_8401_fe5db6d46b11 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-4e307a95-588c-47d5-8401-fe5db6d46b11
