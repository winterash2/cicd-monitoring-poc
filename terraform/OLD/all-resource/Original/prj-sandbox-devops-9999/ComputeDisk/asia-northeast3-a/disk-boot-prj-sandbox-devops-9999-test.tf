resource "google_compute_disk" "disk_boot_prj_sandbox_devops_9999_test" {
  image                     = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20221121"
  name                      = "disk-boot-prj-sandbox-devops-9999-test"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 50
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.disk_boot_prj_sandbox_devops_9999_test projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/disk-boot-prj-sandbox-devops-9999-test
