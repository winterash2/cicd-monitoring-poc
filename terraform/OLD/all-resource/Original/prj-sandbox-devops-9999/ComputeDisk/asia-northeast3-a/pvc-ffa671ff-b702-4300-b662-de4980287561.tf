resource "google_compute_disk" "pvc_ffa671ff_b702_4300_b662_de4980287561" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-ffa671ff-b702-4300-b662-de4980287561\",\"kubernetes.io/created-for/pvc/name\":\"pvc-720072e561\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-ffa671ff-b702-4300-b662-de4980287561"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_ffa671ff_b702_4300_b662_de4980287561 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-ffa671ff-b702-4300-b662-de4980287561
