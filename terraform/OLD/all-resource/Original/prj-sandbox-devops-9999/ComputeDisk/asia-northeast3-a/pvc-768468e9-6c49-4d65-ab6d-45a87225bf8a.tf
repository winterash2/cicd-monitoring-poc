resource "google_compute_disk" "pvc_768468e9_6c49_4d65_ab6d_45a87225bf8a" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-768468e9-6c49-4d65-ab6d-45a87225bf8a\",\"kubernetes.io/created-for/pvc/name\":\"pvc-ef88b9ad6e\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-768468e9-6c49-4d65-ab6d-45a87225bf8a"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_768468e9_6c49_4d65_ab6d_45a87225bf8a projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-768468e9-6c49-4d65-ab6d-45a87225bf8a
