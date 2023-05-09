resource "google_compute_disk" "ljj_sandbox_bastion" {
  image                     = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2210-kinetic-amd64-v20221201"
  name                      = "ljj-sandbox-bastion"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 10
  type                      = "pd-ssd"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.ljj_sandbox_bastion projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ljj-sandbox-bastion
