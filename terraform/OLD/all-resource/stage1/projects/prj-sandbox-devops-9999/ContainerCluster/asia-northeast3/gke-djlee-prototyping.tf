resource "google_container_cluster" "gke_djlee_prototyping" {
  addons_config {
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    horizontal_pod_autoscaling {
      disabled = false
    }

    http_load_balancing {
      disabled = true
    }

    network_policy_config {
      disabled = true
    }
  }

  cluster_autoscaling {
    autoscaling_profile = "BALANCED"
    enabled             = false
  }

  cluster_ipv4_cidr = "10.228.0.0/14"

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

  enable_shielded_nodes = true

  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.228.0.0/14"
    cluster_secondary_range_name  = "gke-gke-djlee-prototyping-pods-d4660811"
    services_ipv4_cidr_block      = "10.232.0.0/20"
    services_secondary_range_name = "gke-gke-djlee-prototyping-services-d4660811"
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
      cidr_block = "10.6.0.0/16"
    }
  }

  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]

    managed_prometheus {
      enabled = true
    }
  }

  name    = "gke-djlee-prototyping"
  network = "projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"

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

    tags = ["gke-djlee-node"]
  }

  node_locations = ["asia-northeast3-a", "asia-northeast3-b", "asia-northeast3-c"]
  node_version   = "1.25.5-gke.1500"

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
      enabled = false
    }

    master_ipv4_cidr_block = "10.2.0.0/28"
  }

  project = "prj-sandbox-devops-9999"

  release_channel {
    channel = "UNSPECIFIED"
  }

  subnetwork = "projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/sbn-k8s-node"

  vertical_pod_autoscaling {
    enabled = true
  }

  workload_identity_config {
    workload_pool = "prj-sandbox-devops-9999.svc.id.goog"
  }
}
# terraform import google_container_cluster.gke_djlee_prototyping prj-sandbox-devops-9999/asia-northeast3/gke-djlee-prototyping
