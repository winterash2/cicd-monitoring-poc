resource "google_compute_security_policy" "dgfhcxfd" {
  name    = "dgfhcxfd"
  project = "prj-sandbox-devops-9999"

  rule {
    action      = "deny(403)"
    description = "Default rule, higher priority overrides it"

    match {
      config {
        src_ip_ranges = ["*"]
      }

      versioned_expr = "SRC_IPS_V1"
    }

    priority = 2147483647
  }

  type = "CLOUD_ARMOR"
}
# terraform import google_compute_security_policy.dgfhcxfd projects/prj-sandbox-devops-9999/global/securityPolicies/dgfhcxfd
