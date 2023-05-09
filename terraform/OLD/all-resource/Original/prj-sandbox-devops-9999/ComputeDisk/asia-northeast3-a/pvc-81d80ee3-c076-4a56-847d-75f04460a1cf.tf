resource "google_compute_disk" "pvc_81d80ee3_c076_4a56_847d_75f04460a1cf" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-81d80ee3-c076-4a56-847d-75f04460a1cf\",\"kubernetes.io/created-for/pvc/name\":\"pvc-772237edab\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-81d80ee3-c076-4a56-847d-75f04460a1cf"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_81d80ee3_c076_4a56_847d_75f04460a1cf projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-81d80ee3-c076-4a56-847d-75f04460a1cf
