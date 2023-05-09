resource "google_iam_custom_role" "customrole" {
  description = "Created on: 2022-11-11"
  permissions = ["compute.instances.get", "compute.instances.list", "compute.instances.osLogin", "compute.instances.setMetadata", "compute.projects.get", "compute.projects.setCommonInstanceMetadata", "iam.serviceAccounts.actAs", "iam.serviceAccounts.get", "iam.serviceAccounts.list", "resourcemanager.projects.get", "serviceusage.quotas.get", "serviceusage.services.get", "serviceusage.services.list"]
  project     = "prj-sandbox-devops-9999"
  role_id     = "CustomRole"
  title       = "Custom.GCE.Login"
}
# terraform import google_iam_custom_role.customrole prj-sandbox-devops-9999##CustomRole
