resource "google_artifact_registry_repository" "moon_helm_chart" {
  format        = "DOCKER"
  location      = "asia-northeast3"
  project       = "prj-sandbox-devops-9999"
  repository_id = "moon-helm-chart"
}
# terraform import google_artifact_registry_repository.moon_helm_chart projects/prj-sandbox-devops-9999/locations/asia-northeast3/repositories/moon-helm-chart
