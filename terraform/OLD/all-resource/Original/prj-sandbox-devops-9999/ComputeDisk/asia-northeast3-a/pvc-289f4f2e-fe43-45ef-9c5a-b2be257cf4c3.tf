resource "google_compute_disk" "pvc_289f4f2e_fe43_45ef_9c5a_b2be257cf4c3" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-289f4f2e-fe43-45ef-9c5a-b2be257cf4c3\",\"kubernetes.io/created-for/pvc/name\":\"pvc-8cbe0d13b2\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-289f4f2e-fe43-45ef-9c5a-b2be257cf4c3"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_289f4f2e_fe43_45ef_9c5a_b2be257cf4c3 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-289f4f2e-fe43-45ef-9c5a-b2be257cf4c3
