resource "google_compute_instance" "moon_bastion_terraform" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20230206"
      size  = 15
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/disks/moon-bastion-terraform"
  }

  machine_type = "e2-micro"

  metadata = {
    enable-oslogin-2fa = "false"
    startup-script     = "sudo apt-get install -y kubectl google-cloud-sdk-gke-gcloud-auth-plugin bash-completion\ncat >> /etc/profile <<EOL\nexport USE_GKE_GCLOUD_AUTH_PLUGIN=True\nsource <(kubectl completion bash)\nalias k=kubectl\ncomplete -o default -F __start_kubectl k\nEOL\nsource /etc/profile\ngcloud storage cp gs://moon-storage-cli/moon-*.yaml ~/"
    enable-oslogin     = "true"
  }

  name = "moon-bastion-terraform"

  network_interface {
    access_config {
      nat_ip       = "34.64.219.204"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
    network_ip         = "10.200.0.8"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/moon-mgmt-subnet-terraform"
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

  tags = ["moonssh"]
  zone = "asia-northeast3-b"
}
# terraform import google_compute_instance.moon_bastion_terraform projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/instances/moon-bastion-terraform
