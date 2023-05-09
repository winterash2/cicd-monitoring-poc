resource "google_compute_instance_group" "k8s_ig__b74c81ed5ad4dc2c" {
  name = "k8s-ig--b74c81ed5ad4dc2c"

  named_port {
    name = "port30933"
    port = 30933
  }

  network = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project = "prj-sandbox-devops-9999"
  zone    = "asia-northeast3-c"
}
# terraform import google_compute_instance_group.k8s_ig__b74c81ed5ad4dc2c projects/prj-sandbox-devops-9999/zones/asia-northeast3-c/instanceGroups/k8s-ig--b74c81ed5ad4dc2c
