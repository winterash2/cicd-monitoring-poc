resource "google_compute_instance" "vm_prj_sandbox_devops_9999_test" {
  boot_disk {
    auto_delete = false
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20221121"
      size  = 50
      type  = "pd-balanced"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/disk-boot-prj-sandbox-devops-9999-test"
  }

  machine_type = "n1-standard-4"
  name         = "vm-prj-sandbox-devops-9999-test"

  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
    network_ip         = "10.178.0.25"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/default"
    subnetwork_project = "prj-sandbox-devops-9999"
  }

  project = "prj-sandbox-devops-9999"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "773410544731-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  zone = "asia-northeast3-a"
}
# terraform import google_compute_instance.vm_prj_sandbox_devops_9999_test projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/vm-prj-sandbox-devops-9999-test
