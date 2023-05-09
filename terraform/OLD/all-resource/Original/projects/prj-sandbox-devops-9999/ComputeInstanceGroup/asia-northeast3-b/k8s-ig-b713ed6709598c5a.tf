resource "google_compute_instance_group" "k8s_ig__b713ed6709598c5a" {
  instances = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instances/gke-gke-devops-tekton-po-default-pool-99695795-4tt3"]
  name      = "k8s-ig--b713ed6709598c5a"

  named_port {
    name = "port31610"
    port = 31610
  }

  network = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project = "prj-sandbox-devops-9999"
  zone    = "asia-northeast3-b"
}
# terraform import google_compute_instance_group.k8s_ig__b713ed6709598c5a projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instanceGroups/k8s-ig--b713ed6709598c5a
