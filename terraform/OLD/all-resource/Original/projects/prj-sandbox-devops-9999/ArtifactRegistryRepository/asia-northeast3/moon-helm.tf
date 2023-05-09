resource "google_artifact_registry_repository" "moon_helm" {
  format        = "DOCKER"
  location      = "asia-northeast3"
  project       = "prj-sandbox-devops-9999"
  repository_id = "moon-helm"
}
# terraform import google_artifact_registry_repository.moon_helm projects/prj-sandbox-devops-9999/locations/asia-northeast3/repositories/moon-helm
