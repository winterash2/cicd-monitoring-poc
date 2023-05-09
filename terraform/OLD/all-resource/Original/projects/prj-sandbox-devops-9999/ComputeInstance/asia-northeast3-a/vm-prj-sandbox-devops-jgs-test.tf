resource "google_compute_instance" "vm_prj_sandbox_devops_jgs_test" {
  boot_disk {
    auto_delete = false
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20221121"
      size  = 50
      type  = "pd-balanced"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/vm-prj-sandbox-devops-jgs-test"
  }

  confidential_instance_config {
    enable_confidential_compute = false
  }

  machine_type = "e2-standard-4"
  name         = "vm-prj-sandbox-devops-jgs-test"

  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
    network_ip         = "10.178.15.236"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/default"
    subnetwork_project = "prj-sandbox-devops-9999"
  }

  project = "prj-sandbox-devops-9999"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "sa-sandbox-rancher@prj-sandbox-devops-9999.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["iap"]
  zone = "asia-northeast3-a"
}
# terraform import google_compute_instance.vm_prj_sandbox_devops_jgs_test projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/vm-prj-sandbox-devops-jgs-test
