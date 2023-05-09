resource "google_compute_disk" "pvc_6a8f2b07_75ca_4524_a173_245d99283545" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-6a8f2b07-75ca-4524-a173-245d99283545\",\"kubernetes.io/created-for/pvc/name\":\"pvc-de1d4d4200\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-6a8f2b07-75ca-4524-a173-245d99283545"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_6a8f2b07_75ca_4524_a173_245d99283545 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-6a8f2b07-75ca-4524-a173-245d99283545
