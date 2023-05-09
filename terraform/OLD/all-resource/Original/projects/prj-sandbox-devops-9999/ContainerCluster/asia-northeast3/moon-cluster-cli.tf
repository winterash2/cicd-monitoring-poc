resource "google_container_cluster" "moon_cluster_cli" {
  addons_config {
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

  cluster_autoscaling {
    autoscaling_profile = "BALANCED"
    enabled             = false
  }

  cluster_ipv4_cidr = "10.92.0.0/14"

  cluster_telemetry {
    type = "ENABLED"
  }

  database_encryption {
    state = "DECRYPTED"
  }

  datapath_provider         = "ADVANCED_DATAPATH"
  default_max_pods_per_node = 110

  default_snat_status {
    disabled = true
  }

  enable_l4_ilb_subsetting = true
  enable_shielded_nodes    = true

  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.92.0.0/14"
    cluster_secondary_range_name  = "gke-moon-cluster-cli-pods-4dcba798"
    services_ipv4_cidr_block      = "10.96.0.0/20"
    services_secondary_range_name = "gke-moon-cluster-cli-services-4dcba798"
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

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "10.200.0.0/20"
    }
  }

  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]

    managed_prometheus {
      enabled = true
    }
  }

  name    = "moon-cluster-cli"
  network = "projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"

  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"

  node_config {
    disk_size_gb = 32
    disk_type    = "pd-standard"
    image_type   = "COS_CONTAINERD"
    machine_type = "e2-small"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }

  node_locations = ["asia-northeast3-a", "asia-northeast3-b", "asia-northeast3-c"]
  node_version   = "1.25.5-gke.2000"

  notification_config {
    pubsub {
      enabled = false
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true

    master_global_access_config {
      enabled = true
    }

    master_ipv4_cidr_block = "123.123.123.0/28"
  }

  project = "prj-sandbox-devops-9999"

  release_channel {
    channel = "UNSPECIFIED"
  }

  subnetwork = "projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/moon-node-subnet-terraform"

  vertical_pod_autoscaling {
    enabled = true
  }
}
# terraform import google_container_cluster.moon_cluster_cli prj-sandbox-devops-9999/asia-northeast3/moon-cluster-cli
