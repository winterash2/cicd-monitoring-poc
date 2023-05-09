resource "google_compute_disk" "pvc_94661ee3_8448_4859_92c8_7e1c52f96dea" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-94661ee3-8448-4859-92c8-7e1c52f96dea\",\"kubernetes.io/created-for/pvc/name\":\"pvc-f6a6cc4bb7\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-94661ee3-8448-4859-92c8-7e1c52f96dea"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_94661ee3_8448_4859_92c8_7e1c52f96dea projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-94661ee3-8448-4859-92c8-7e1c52f96dea
