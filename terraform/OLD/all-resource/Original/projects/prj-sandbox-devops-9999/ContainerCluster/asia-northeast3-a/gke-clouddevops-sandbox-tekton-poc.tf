resource "google_container_cluster" "gke_clouddevops_sandbox_tekton_poc" {
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
      disabled = true
    }
  }

  binary_authorization {
    evaluation_mode = "DISABLED"
  }

  cluster_autoscaling {
    autoscaling_profile = "BALANCED"
    enabled             = false
  }

  cluster_ipv4_cidr = "10.84.0.0/14"

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

  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.84.0.0/14"
    cluster_secondary_range_name  = "gke-gke-clouddevops-sandbox-tekton-poc-pods-22d0a4fb"
    services_ipv4_cidr_block      = "10.88.0.0/20"
    services_secondary_range_name = "gke-gke-clouddevops-sandbox-tekton-poc-services-22d0a4fb"
  }

  location = "asia-northeast3-a"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "14.52.210.207/32"
      display_name = "WMP HQ Office"
    }

    cidr_blocks {
      cidr_block   = "211.174.55.156/32"
      display_name = "WMP Office"
    }

    cidr_blocks {
      cidr_block   = "27.35.75.161/32"
      display_name = "Home"
    }
  }

  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]

    managed_prometheus {
      enabled = false
    }
  }

  name    = "gke-clouddevops-sandbox-tekton-poc"
  network = "projects/prj-sandbox-devops-9999/global/networks/default"

  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"

  node_config {
    disk_size_gb = 100
    disk_type    = "pd-balanced"
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

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_version = "1.25.5-gke.2000"

  notification_config {
    pubsub {
      enabled = false
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes    = true

    master_global_access_config {
      enabled = true
    }

    master_ipv4_cidr_block = "192.168.1.0/28"
  }

  project = "prj-sandbox-devops-9999"

  release_channel {
    channel = "REGULAR"
  }

  resource_usage_export_config {
    bigquery_destination {
      dataset_id = "test"
    }

    enable_network_egress_metering       = true
    enable_resource_consumption_metering = true
  }

  subnetwork = "projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/default"

  vertical_pod_autoscaling {
    enabled = true
  }

  workload_identity_config {
    workload_pool = "prj-sandbox-devops-9999.svc.id.goog"
  }
}
# terraform import google_container_cluster.gke_clouddevops_sandbox_tekton_poc prj-sandbox-devops-9999/asia-northeast3-a/gke-clouddevops-sandbox-tekton-poc
