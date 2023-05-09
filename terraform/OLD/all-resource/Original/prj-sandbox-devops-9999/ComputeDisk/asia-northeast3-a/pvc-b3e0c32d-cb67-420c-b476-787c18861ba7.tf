resource "google_compute_disk" "pvc_b3e0c32d_cb67_420c_b476_787c18861ba7" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-b3e0c32d-cb67-420c-b476-787c18861ba7\",\"kubernetes.io/created-for/pvc/name\":\"pvc-820d265de1\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-b3e0c32d-cb67-420c-b476-787c18861ba7"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_b3e0c32d_cb67_420c_b476_787c18861ba7 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-b3e0c32d-cb67-420c-b476-787c18861ba7
