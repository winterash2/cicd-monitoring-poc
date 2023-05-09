resource "google_compute_disk" "pvc_e22b3c5a_a6a3_402c_b926_a4d398ecdc98" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-e22b3c5a-a6a3-402c-b926-a4d398ecdc98\",\"kubernetes.io/created-for/pvc/name\":\"pvc-686583aa45\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-e22b3c5a-a6a3-402c-b926-a4d398ecdc98"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_e22b3c5a_a6a3_402c_b926_a4d398ecdc98 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-e22b3c5a-a6a3-402c-b926-a4d398ecdc98
