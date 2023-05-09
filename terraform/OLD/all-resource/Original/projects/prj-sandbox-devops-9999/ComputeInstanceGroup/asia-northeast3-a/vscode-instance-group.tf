resource "google_compute_instance_group" "vscode_instance_group" {
  instances = ["https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/vm-prj-sandbox-devops-jgs-test"]
  name      = "vscode-instance-group"

  named_port {
    name = "vscode"
    port = 8080
  }

  network = "https://www.googleapis.com/compute/beta/projects/prj-sandbox-devops-9999/global/networks/default"
  project = "prj-sandbox-devops-9999"
  zone    = "asia-northeast3-a"
}
# terraform import google_compute_instance_group.vscode_instance_group projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instanceGroups/vscode-instance-group
