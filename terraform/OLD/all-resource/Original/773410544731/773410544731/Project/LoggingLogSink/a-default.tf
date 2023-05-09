resource "google_logging_log_sink" "a_default" {
  destination            = "logging.googleapis.com/projects/prj-sandbox-devops-9999/locations/global/buckets/_Default"
  filter                 = "NOT LOG_ID(\"cloudaudit.googleapis.com/activity\") AND NOT LOG_ID(\"externalaudit.googleapis.com/activity\") AND NOT LOG_ID(\"cloudaudit.googleapis.com/system_event\") AND NOT LOG_ID(\"externalaudit.googleapis.com/system_event\") AND NOT LOG_ID(\"cloudaudit.googleapis.com/access_transparency\") AND NOT LOG_ID(\"externalaudit.googleapis.com/access_transparency\")"
  name                   = "_Default"
  project                = "773410544731"
  unique_writer_identity = true
}
# terraform import google_logging_log_sink.a_default 773410544731###_Default
