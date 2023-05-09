resource "google_compute_disk" "ins_djlee_k8s_bastion" {
  image                     = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20230131"
  name                      = "ins-djlee-k8s-bastion"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 20
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.ins_djlee_k8s_bastion projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ins-djlee-k8s-bastion
