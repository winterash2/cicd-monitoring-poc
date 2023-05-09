resource "google_compute_instance" "ins_djlee_jenkins_vm" {
  boot_disk {
    auto_delete = true
    device_name = "jenkins-vm-tmpl-boot-disk"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/click-to-deploy-images/global/images/jenkins-v20230115"
      size  = 50
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ins-djlee-jenkins-vm"
  }

  labels = {
    goog-dm = "ins-djlee-jenkins"
  }

  machine_type = "e2-standard-2"

  metadata = {
    google-logging-enable    = "0"
    jenkins-admin-password   = "kSNy1.WE"
    google-monitoring-enable = "0"
  }

  name = "ins-djlee-jenkins-vm"

  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
    network_ip         = "10.7.0.8"
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
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["iap", "ins-djlee-jenkins-deployment", "jenkins"]
  zone = "asia-northeast3-a"
}
# terraform import google_compute_instance.ins_djlee_jenkins_vm projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/ins-djlee-jenkins-vm
