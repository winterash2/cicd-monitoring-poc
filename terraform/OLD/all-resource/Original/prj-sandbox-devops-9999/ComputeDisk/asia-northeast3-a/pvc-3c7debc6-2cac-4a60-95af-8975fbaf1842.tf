resource "google_compute_disk" "pvc_3c7debc6_2cac_4a60_95af_8975fbaf1842" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-3c7debc6-2cac-4a60-95af-8975fbaf1842\",\"kubernetes.io/created-for/pvc/name\":\"pvc-6aa9649559\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-3c7debc6-2cac-4a60-95af-8975fbaf1842"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_3c7debc6_2cac_4a60_95af_8975fbaf1842 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-3c7debc6-2cac-4a60-95af-8975fbaf1842
