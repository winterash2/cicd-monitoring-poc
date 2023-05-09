resource "google_compute_ssl_policy" "ssl_tls12_modern" {
  min_tls_version = "TLS_1_2"
  name            = "ssl-tls12-modern"
  profile         = "MODERN"
  project         = "prj-sandbox-devops-9999"
}
# terraform import google_compute_ssl_policy.ssl_tls12_modern projects/prj-sandbox-devops-9999/global/sslPolicies/ssl-tls12-modern
