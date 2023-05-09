resource "google_compute_instance" "ins_djlee_k8s_bastion" {
  boot_disk {
    auto_delete = true
    device_name = "ins-djlee-k8s-bastion"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20230131"
      size  = 20
      type  = "pd-balanced"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/disks/ins-djlee-k8s-bastion"
  }

  confidential_instance_config {
    enable_confidential_compute = false
  }

  machine_type = "e2-medium"

  metadata = {
    enable-oslogin-2fa = "true"
    enable-oslogin     = "true"
  }

  name = "ins-djlee-k8s-bastion"

  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
    network_ip         = "10.6.0.2"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sbn-k8s-authorized"
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
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["djlee", "iap"]
  zone = "asia-northeast3-a"
}
# terraform import google_compute_instance.ins_djlee_k8s_bastion projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/instances/ins-djlee-k8s-bastion
