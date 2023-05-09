resource "google_compute_disk" "ins_djlee_jenkins_vm" {
  image                     = "https://www.googleapis.com/compute/beta/projects/click-to-deploy-images/global/images/jenkins-v20230115"
  name                      = "ins-djlee-jenkins-vm"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 50
  type                      = "pd-standard"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.ins_djlee_jenkins_vm projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ins-djlee-jenkins-vm
