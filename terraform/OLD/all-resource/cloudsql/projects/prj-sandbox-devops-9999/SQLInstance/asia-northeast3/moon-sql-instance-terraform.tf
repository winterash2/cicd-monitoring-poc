resource "google_sql_database_instance" "moon_sql_instance_terraform" {
  database_version = "MYSQL_8_0_26"
  name             = "moon-sql-instance-terraform"
  project          = "prj-sandbox-devops-9999"
  region           = "asia-northeast3"

  settings {
    activation_policy = "ALWAYS"
    availability_type = "REGIONAL"

    backup_configuration {
      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }

      binary_log_enabled             = true
      enabled                        = true
      location                       = "asia"
      start_time                     = "13:00"
      transaction_log_retention_days = 7
    }

    disk_autoresize       = true
    disk_autoresize_limit = 0
    disk_size             = 10
    disk_type             = "PD_HDD"

    ip_configuration {
      allocated_ip_range = "moon-psa-terraform"

      authorized_networks {
        name  = "projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/moon-mgmt-subnet-terraform"
        value = "0.0.0.0/0"
      }

      ipv4_enabled    = false
      private_network = "projects/prj-sandbox-devops-9999/global/networks/moon-network-terraform"
    }

    location_preference {
      zone = "asia-northeast3-a"
    }

    pricing_plan = "PER_USE"
    tier         = "db-f1-micro"
  }
}
# terraform import google_sql_database_instance.moon_sql_instance_terraform projects/prj-sandbox-devops-9999/instances/moon-sql-instance-terraform
