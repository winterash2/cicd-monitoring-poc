resource "google_compute_instance" "ins_djlee_gitlab_vm" {
  boot_disk {
    auto_delete = true
    device_name = "gitlab-ce-ubuntu-20-04-vm-tmpl-boot-disk"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/cloud-infra-services-public/global/images/gitlabbuntu20-15042021"
      size  = 50
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ins-djlee-gitlab-vm"
  }

  labels = {
    goog-dm = "ins-djlee-gitlab"
  }

  machine_type = "e2-medium"

  metadata = {
    google-monitoring-enable = "0"
    google-logging-enable    = "0"
  }

  name = "ins-djlee-gitlab-vm"

  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
    network_ip         = "10.7.0.7"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sbn-mgmt"
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
    scopes = ["https://www.googleapis.com/auth/cloud.useraccounts.readonly", "https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["gitlab", "http-server", "iap", "ins-djlee-gitlab-deployment"]
  zone = "asia-northeast3-a"
}
# terraform import google_compute_instance.ins_djlee_gitlab_vm projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/ins-djlee-gitlab-vm
