resource "google_container_cluster" "gke_devops_tekton_poc_jgs" {
  addons_config {
    dns_cache_config {
      enabled = true
    }

    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    gcp_filestore_csi_driver_config {
      enabled = true
    }

    gke_backup_agent_config {
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

  cluster_autoscaling {
    auto_provisioning_defaults {
      image_type      = "COS_CONTAINERD"
      oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
      service_account = "default"
    }

    autoscaling_profile = "BALANCED"
    enabled             = true

    resource_limits {
      maximum       = 1
      minimum       = 1
      resource_type = "cpu"
    }

    resource_limits {
      maximum       = 1
      minimum       = 1
      resource_type = "memory"
    }
  }

  cluster_ipv4_cidr = "10.72.0.0/14"

  cluster_telemetry {
    type = "ENABLED"
  }

  database_encryption {
    state = "DECRYPTED"
  }

  datapath_provider         = "ADVANCED_DATAPATH"
  default_max_pods_per_node = 110

  default_snat_status {
    disabled = false
  }

  enable_intranode_visibility = true
  enable_l4_ilb_subsetting    = true
  enable_shielded_nodes       = true

  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.72.0.0/14"
    cluster_secondary_range_name  = "gke-gke-devops-tekton-poc-jgs-pods-8f46fa5d"
    services_ipv4_cidr_block      = "10.76.0.0/20"
    services_secondary_range_name = "gke-gke-devops-tekton-poc-jgs-services-8f46fa5d"
  }

  location = "asia-northeast3"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS", "APISERVER", "SCHEDULER", "CONTROLLER_MANAGER"]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "10.178.0.0/20"
      display_name = "sn-demo-asia-northeast3"
    }
  }

  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS", "APISERVER", "SCHEDULER", "CONTROLLER_MANAGER"]

    managed_prometheus {
      enabled = true
    }
  }

  name    = "gke-devops-tekton-poc-jgs"
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
    machine_type = "n2-custom-8-16384"

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

  node_locations = ["asia-northeast3-a", "asia-northeast3-b"]
  node_version   = "1.25.6-gke.200"

  notification_config {
    pubsub {
      enabled = true
      topic   = "projects/prj-sandbox-devops-9999/topics/gke-topic-tekton-demo"
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true

    master_global_access_config {
      enabled = false
    }

    master_ipv4_cidr_block = "192.168.2.0/28"
  }

  project = "prj-sandbox-devops-9999"

  release_channel {
    channel = "UNSPECIFIED"
  }

  resource_usage_export_config {
    bigquery_destination {
      dataset_id = "gke_tekton_poc_dataset"
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
# terraform import google_container_cluster.gke_devops_tekton_poc_jgs prj-sandbox-devops-9999/asia-northeast3/gke-devops-tekton-poc-jgs
