resource "google_sql_database_instance" "sql_djlee_prototyping" {
  database_version = "MYSQL_8_0_26"
  name             = "sql-djlee-prototyping"
  project          = "prj-sandbox-devops-9999"
  region           = "asia-northeast3"

  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"

    backup_configuration {
      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }

      start_time                     = "19:00"
      transaction_log_retention_days = 7
    }

    disk_autoresize       = true
    disk_autoresize_limit = 0
    disk_size             = 10
    disk_type             = "PD_SSD"

    ip_configuration {
      ipv4_enabled    = false
      private_network = "projects/prj-sandbox-devops-9999/global/networks/djlee-prototyping"
    }

    location_preference {
      zone = "asia-northeast3-a"
    }

    pricing_plan = "PER_USE"
    tier         = "db-f1-micro"
  }
}
# terraform import google_sql_database_instance.sql_djlee_prototyping projects/prj-sandbox-devops-9999/instances/sql-djlee-prototyping
