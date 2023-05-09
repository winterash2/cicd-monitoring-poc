resource "google_compute_disk" "ins_djlee_gitlab_vm" {
  image                     = "https://www.googleapis.com/compute/beta/projects/cloud-infra-services-public/global/images/gitlabbuntu20-15042021"
  name                      = "ins-djlee-gitlab-vm"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 50
  type                      = "pd-standard"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.ins_djlee_gitlab_vm projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ins-djlee-gitlab-vm
