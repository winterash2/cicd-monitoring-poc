resource "google_compute_instance_template" "test_old_template" {
  confidential_instance_config {
    enable_confidential_compute = false
  }

  disk {
    auto_delete  = true
    boot         = true
    device_name  = "test-old-template"
    disk_size_gb = 10
    disk_type    = "pd-balanced"
    mode         = "READ_WRITE"
    source_image = "projects/debian-cloud/global/images/debian-11-bullseye-v20221206"
    type         = "PERSISTENT"
  }

  labels = {
    managed-by-cnrm = "true"
  }

  machine_type = "e2-medium"

  metadata = {
    enable-oslogin-2fa = "true"
    enable-oslogin     = "true"
  }

  name = "test-old-template"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/default"
    subnetwork_project = "prj-sandbox-devops-9999"
  }

  project = "prj-sandbox-devops-9999"
  region  = "asia-northeast3"

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
}
# terraform import google_compute_instance_template.test_old_template projects/prj-sandbox-devops-9999/global/instanceTemplates/test-old-template
