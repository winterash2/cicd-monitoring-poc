resource "google_artifact_registry_repository" "djlee_container_registry" {
  format        = "DOCKER"
  location      = "asia-northeast3"
  project       = "prj-sandbox-devops-9999"
  repository_id = "djlee-container-registry"
}
# terraform import google_artifact_registry_repository.djlee_container_registry projects/prj-sandbox-devops-9999/locations/asia-northeast3/repositories/djlee-container-registry
