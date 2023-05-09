resource "google_compute_disk" "pvc_af82d19f_fc08_4755_83ee_a74afa9850ad" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-af82d19f-fc08-4755-83ee-a74afa9850ad\",\"kubernetes.io/created-for/pvc/name\":\"pvc-df4d278343\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-af82d19f-fc08-4755-83ee-a74afa9850ad"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_af82d19f_fc08_4755_83ee_a74afa9850ad projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-af82d19f-fc08-4755-83ee-a74afa9850ad
