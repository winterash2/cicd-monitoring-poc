resource "google_compute_disk" "vm_prj_sandbox_devops_jgs_test" {
  image                     = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20221121"
  name                      = "vm-prj-sandbox-devops-jgs-test"
  physical_block_size_bytes = 4096
  project                   = "prj-sandbox-devops-9999"
  size                      = 50
  type                      = "pd-balanced"
  zone                      = "asia-northeast3-a"
}
# terraform import google_compute_disk.vm_prj_sandbox_devops_jgs_test projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/vm-prj-sandbox-devops-jgs-test
