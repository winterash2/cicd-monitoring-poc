resource "google_compute_disk" "pvc_9ef04da8_bcad_41bb_af54_2d114eaed1c0" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-9ef04da8-bcad-41bb-af54-2d114eaed1c0\",\"kubernetes.io/created-for/pvc/name\":\"pvc-fd220a8de5\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-9ef04da8-bcad-41bb-af54-2d114eaed1c0"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_9ef04da8_bcad_41bb_af54_2d114eaed1c0 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-9ef04da8-bcad-41bb-af54-2d114eaed1c0
