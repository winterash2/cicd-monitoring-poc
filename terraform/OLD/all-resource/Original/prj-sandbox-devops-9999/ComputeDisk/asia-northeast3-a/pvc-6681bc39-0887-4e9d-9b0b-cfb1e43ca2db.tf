resource "google_compute_disk" "pvc_6681bc39_0887_4e9d_9b0b_cfb1e43ca2db" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-6681bc39-0887-4e9d-9b0b-cfb1e43ca2db\",\"kubernetes.io/created-for/pvc/name\":\"pvc-b0661bd50d\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-6681bc39-0887-4e9d-9b0b-cfb1e43ca2db"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_6681bc39_0887_4e9d_9b0b_cfb1e43ca2db projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-6681bc39-0887-4e9d-9b0b-cfb1e43ca2db
