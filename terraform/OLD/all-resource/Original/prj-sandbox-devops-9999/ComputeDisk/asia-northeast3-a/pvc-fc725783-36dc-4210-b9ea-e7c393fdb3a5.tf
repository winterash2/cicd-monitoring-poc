resource "google_compute_disk" "pvc_fc725783_36dc_4210_b9ea_e7c393fdb3a5" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-fc725783-36dc-4210-b9ea-e7c393fdb3a5\",\"kubernetes.io/created-for/pvc/name\":\"pvc-02825c106a\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-gke-volume = ""
  }

  name                      = "pvc-fc725783-36dc-4210-b9ea-e7c393fdb3a5"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 1
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.pvc_fc725783_36dc_4210_b9ea_e7c393fdb3a5 projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/pvc-fc725783-36dc-4210-b9ea-e7c393fdb3a5
