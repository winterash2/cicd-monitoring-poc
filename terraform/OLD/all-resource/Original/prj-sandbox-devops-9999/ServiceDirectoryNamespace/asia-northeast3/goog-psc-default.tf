resource "google_service_directory_namespace" "goog_psc_default" {
  location     = "asia-northeast3"
  namespace_id = "goog-psc-default"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_service_directory_namespace.goog_psc_default projects/prj-sandbox-devops-9999/locations/asia-northeast3/namespaces/goog-psc-default
