resource "google_compute_disk" "pvc_2ee556dd_ca7e_451b_b9bf_f772f9f4e6d3" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-2ee556dd-ca7e-451b-b9bf-f772f9f4e6d3\",\"kubernetes.io/created-for/pvc/name\":\"pvc-5bbb19c078\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-2ee556dd-ca7e-451b-b9bf-f772f9f4e6d3"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_2ee556dd_ca7e_451b_b9bf_f772f9f4e6d3 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-2ee556dd-ca7e-451b-b9bf-f772f9f4e6d3
