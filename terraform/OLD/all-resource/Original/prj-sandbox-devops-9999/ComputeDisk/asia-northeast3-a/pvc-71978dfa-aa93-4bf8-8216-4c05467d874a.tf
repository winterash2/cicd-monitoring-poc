resource "google_compute_disk" "pvc_71978dfa_aa93_4bf8_8216_4c05467d874a" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-71978dfa-aa93-4bf8-8216-4c05467d874a\",\"kubernetes.io/created-for/pvc/name\":\"pvc-d271ebed85\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-71978dfa-aa93-4bf8-8216-4c05467d874a"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_71978dfa_aa93_4bf8_8216_4c05467d874a projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-71978dfa-aa93-4bf8-8216-4c05467d874a
