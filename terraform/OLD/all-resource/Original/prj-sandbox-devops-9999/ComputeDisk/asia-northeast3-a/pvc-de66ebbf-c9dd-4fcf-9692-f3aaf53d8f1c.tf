resource "google_compute_disk" "pvc_de66ebbf_c9dd_4fcf_9692_f3aaf53d8f1c" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-de66ebbf-c9dd-4fcf-9692-f3aaf53d8f1c\",\"kubernetes.io/created-for/pvc/name\":\"pvc-265ad5f67b\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-de66ebbf-c9dd-4fcf-9692-f3aaf53d8f1c"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_de66ebbf_c9dd_4fcf_9692_f3aaf53d8f1c projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-de66ebbf-c9dd-4fcf-9692-f3aaf53d8f1c
