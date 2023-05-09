resource "google_compute_disk" "pvc_6d7bcd3e_81d1_4b1a_a408_28c52d80f253" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-6d7bcd3e-81d1-4b1a-a408-28c52d80f253\",\"kubernetes.io/created-for/pvc/name\":\"pvc-d7b432f537\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-6d7bcd3e-81d1-4b1a-a408-28c52d80f253"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_6d7bcd3e_81d1_4b1a_a408_28c52d80f253 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-6d7bcd3e-81d1-4b1a-a408-28c52d80f253
