resource "google_container_cluster" "gke_dev_clouddevops_sandbox_tekton" {
  addons_config {
    dns_cache_config {
      enabled = false
    }

    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    horizontal_pod_autoscaling {
      disabled = false
    }

    http_load_balancing {
      disabled = false
    }

    network_policy_config {
      disabled = false
    }
  }

  binary_authorization {
    evaluation_mode = "DISABLED"
  }

  cluster_autoscaling {
    autoscaling_profile = "BALANCED"
    enabled             = false
  }

  cluster_ipv4_cidr = "10.108.0.0/14"

  cluster_telemetry {
    type = "ENABLED"
  }

  database_encryption {
    state = "DECRYPTED"
  }

  datapath_provider         = "LEGACY_DATAPATH"
  default_max_pods_per_node = 110

  default_snat_status {
    disabled = false
  }

  enable_shielded_nodes = true

  identity_service_config {
    enabled = true
  }

  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.108.0.0/14"
    cluster_secondary_range_name  = "gke-gke-dev-clouddevops-sandbox-tekton-pods-d59696cd"
    services_ipv4_cidr_block      = "10.112.0.0/20"
    services_secondary_range_name = "gke-gke-dev-clouddevops-sandbox-tekton-services-d59696cd"
  }

  location = "asia-northeast3"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]
  }

  name    = "gke-dev-clouddevops-sandbox-tekton"
  network = "projects/prj-sandbox-devops-9999/global/networks/default"

  network_policy {
    enabled  = true
    provider = "CALICO"
  }

  networking_mode = "VPC_NATIVE"

  node_config {
    disk_size_gb = 100
    disk_type    = "pd-standard"
    image_type   = "COS_CONTAINERD"
    machine_type = "e2-medium"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }

    tags = ["ssh-bastion"]

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_locations = ["asia-northeast3-a", "asia-northeast3-b", "asia-northeast3-c"]
  node_version   = "1.23.14-gke.1800"

  notification_config {
    pubsub {
      enabled = false
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  project = "prj-sandbox-devops-9999"

  release_channel {
    channel = "REGULAR"
  }

  resource_labels = {
    enalbe-oslogin = "true"
  }

  subnetwork = "projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/default"

  workload_identity_config {
    workload_pool = "prj-sandbox-devops-9999.svc.id.goog"
  }
}
# terraform import google_container_cluster.gke_dev_clouddevops_sandbox_tekton prj-sandbox-devops-9999/asia-northeast3/gke-dev-clouddevops-sandbox-tekton
