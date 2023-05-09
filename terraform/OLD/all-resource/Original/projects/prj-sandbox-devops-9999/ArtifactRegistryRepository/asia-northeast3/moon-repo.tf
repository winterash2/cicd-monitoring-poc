resource "google_artifact_registry_repository" "moon_repo" {
  format        = "DOCKER"
  location      = "asia-northeast3"
  project       = "prj-sandbox-devops-9999"
  repository_id = "moon-repo"
}
# terraform import google_artifact_registry_repository.moon_repo projects/prj-sandbox-devops-9999/locations/asia-northeast3/repositories/moon-repo
