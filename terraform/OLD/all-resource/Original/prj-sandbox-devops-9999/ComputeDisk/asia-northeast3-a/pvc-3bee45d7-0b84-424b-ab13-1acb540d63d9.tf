resource "google_compute_disk" "pvc_3bee45d7_0b84_424b_ab13_1acb540d63d9" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-3bee45d7-0b84-424b-ab13-1acb540d63d9\",\"kubernetes.io/created-for/pvc/name\":\"pvc-c9bc712634\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-3bee45d7-0b84-424b-ab13-1acb540d63d9"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_3bee45d7_0b84_424b_ab13_1acb540d63d9 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-3bee45d7-0b84-424b-ab13-1acb540d63d9
