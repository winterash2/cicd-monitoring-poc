resource "google_compute_disk" "pvc_ab0d51bb_151b_45ba_b394_cc5bb0620a37" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-ab0d51bb-151b-45ba-b394-cc5bb0620a37\",\"kubernetes.io/created-for/pvc/name\":\"pvc-032ba38edb\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-ab0d51bb-151b-45ba-b394-cc5bb0620a37"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_ab0d51bb_151b_45ba_b394_cc5bb0620a37 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-ab0d51bb-151b-45ba-b394-cc5bb0620a37
