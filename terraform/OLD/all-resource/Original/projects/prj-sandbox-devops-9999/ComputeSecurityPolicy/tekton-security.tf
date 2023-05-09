resource "google_compute_security_policy" "tekton_security" {
  description = "tekton dashboard security \n(*Create Date 2023/02/10~)"
  name        = "tekton-security"
  project     = "prj-sandbox-devops-9999"

  rule {
    action      = "allow"
    description = "HQ, WMP Office"

    match {
      config {
        src_ip_ranges = ["14.52.210.207/32", "211.174.55.156/32", "220.120.150.38/32"]
      }

      versioned_expr = "SRC_IPS_V1"
    }

    priority = 1000000000
  }

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
# terraform import google_compute_security_policy.tekton_security projects/prj-sandbox-devops-9999/global/securityPolicies/tekton-security
