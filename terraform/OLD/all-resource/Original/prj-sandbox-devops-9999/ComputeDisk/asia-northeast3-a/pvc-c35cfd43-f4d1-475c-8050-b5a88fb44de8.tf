resource "google_compute_disk" "pvc_c35cfd43_f4d1_475c_8050_b5a88fb44de8" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-c35cfd43-f4d1-475c-8050-b5a88fb44de8\",\"kubernetes.io/created-for/pvc/name\":\"pvc-f5f75c950f\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-c35cfd43-f4d1-475c-8050-b5a88fb44de8"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_c35cfd43_f4d1_475c_8050_b5a88fb44de8 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-c35cfd43-f4d1-475c-8050-b5a88fb44de8
