resource "google_compute_disk" "pvc_bede0ab7_c007_41d7_900b_352353796898" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-bede0ab7-c007-41d7-900b-352353796898\",\"kubernetes.io/created-for/pvc/name\":\"pvc-033f814c3e\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-bede0ab7-c007-41d7-900b-352353796898"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_bede0ab7_c007_41d7_900b_352353796898 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-bede0ab7-c007-41d7-900b-352353796898
