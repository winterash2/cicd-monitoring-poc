resource "google_compute_instance" "ljj_sandbox_bastion" {
  boot_disk {
    auto_delete = true
    device_name = "ljj-sandbox-bastion"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2210-kinetic-amd64-v20221201"
      size  = 10
      type  = "pd-ssd"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ljj-sandbox-bastion"
  }

  can_ip_forward = true

  confidential_instance_config {
    enable_confidential_compute = false
  }

  machine_type = "e2-micro"

  metadata = {
    enalbe-oslogin     = "TRUE"
    enable-oslogin-2fa = "true"
    enable-oslogin     = "true"
  }

  name = "ljj-sandbox-bastion"

  network_interface {
    access_config {
      nat_ip       = "35.216.58.56"
      network_tier = "STANDARD"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
    network_ip         = "10.100.10.5"
    nic_type           = "VIRTIO_NET"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sn-ljj-gke-test"
    subnetwork_project = "prj-sandbox-devops-9999"
  }

  project = "prj-sandbox-devops-9999"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = false
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

  tags = ["iap"]
  zone = "asia-northeast3-a"
}
# terraform import google_compute_instance.ljj_sandbox_bastion projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/ljj-sandbox-bastion
