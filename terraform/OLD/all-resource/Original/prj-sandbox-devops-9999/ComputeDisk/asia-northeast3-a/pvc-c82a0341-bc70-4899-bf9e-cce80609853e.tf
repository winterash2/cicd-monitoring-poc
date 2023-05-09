resource "google_compute_disk" "pvc_c82a0341_bc70_4899_bf9e_cce80609853e" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-c82a0341-bc70-4899-bf9e-cce80609853e\",\"kubernetes.io/created-for/pvc/name\":\"pvc-7494d0f297\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-c82a0341-bc70-4899-bf9e-cce80609853e"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_c82a0341_bc70_4899_bf9e_cce80609853e projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-c82a0341-bc70-4899-bf9e-cce80609853e
