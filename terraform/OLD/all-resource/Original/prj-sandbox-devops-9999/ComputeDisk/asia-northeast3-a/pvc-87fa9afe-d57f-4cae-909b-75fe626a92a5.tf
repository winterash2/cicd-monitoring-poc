resource "google_compute_disk" "pvc_87fa9afe_d57f_4cae_909b_75fe626a92a5" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-87fa9afe-d57f-4cae-909b-75fe626a92a5\",\"kubernetes.io/created-for/pvc/name\":\"pvc-723d92e684\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-87fa9afe-d57f-4cae-909b-75fe626a92a5"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_87fa9afe_d57f_4cae_909b_75fe626a92a5 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-87fa9afe-d57f-4cae-909b-75fe626a92a5
