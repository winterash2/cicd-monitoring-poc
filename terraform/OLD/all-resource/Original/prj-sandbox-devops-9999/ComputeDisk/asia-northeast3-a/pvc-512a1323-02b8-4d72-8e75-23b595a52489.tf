resource "google_compute_disk" "pvc_512a1323_02b8_4d72_8e75_23b595a52489" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-512a1323-02b8-4d72-8e75-23b595a52489\",\"kubernetes.io/created-for/pvc/name\":\"pvc-7454836071\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-512a1323-02b8-4d72-8e75-23b595a52489"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_512a1323_02b8_4d72_8e75_23b595a52489 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-512a1323-02b8-4d72-8e75-23b595a52489
