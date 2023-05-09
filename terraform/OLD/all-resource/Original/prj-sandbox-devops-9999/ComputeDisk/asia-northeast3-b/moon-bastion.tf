resource "google_compute_disk" "moon_bastion" {
  image                     = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20230206"
  name                      = "moon-bastion"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 15
  type                      = "pd-standard"
  zone                      = "asia-northeast3-b"
}
# terraform import google_compute_disk.moon_bastion projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/disks/moon-bastion
