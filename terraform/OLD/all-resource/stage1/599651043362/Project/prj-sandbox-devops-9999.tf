resource "google_project" "prj_sandbox_devops_9999" {
  auto_create_network = true
  billing_account     = "015C42-C06220-BCEF8B"
  folder_id           = "599651043362"

  labels = {
    firebase = "enabled"
  }

  name       = "CloudDevOps-sandbox"
  project_id = "prj-sandbox-devops-9999"
}
# terraform import google_project.prj_sandbox_devops_9999 projects/prj-sandbox-devops-9999
