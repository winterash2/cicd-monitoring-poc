resource "google_compute_instance" "moon_bastion" {
  boot_disk {
    auto_delete = true
    device_name = "moon-bastion"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20230206"
      size  = 15
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/disks/moon-bastion"
  }

  machine_type = "e2-micro"

  metadata = {
    enable-oslogin-2fa = "false"
    enable-oslogin     = "true"
  }

  name = "moon-bastion"

  network_interface {
    access_config {
      nat_ip       = "34.64.174.12"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network"
    network_ip         = "10.200.0.2"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/moon-mgmt-subnet"
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
    email  = "773410544731-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["moonssh"]
  zone = "asia-northeast3-b"
}
# terraform import google_compute_instance.moon_bastion projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instances/moon-bastion
