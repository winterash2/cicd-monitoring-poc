resource "google_compute_global_address" "gke_gyeongsik_tekton" {
  address      = "35.186.235.240"
  address_type = "EXTERNAL"
  ip_version   = "IPV4"
  name         = "gke-gyeongsik-tekton"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_compute_global_address.gke_gyeongsik_tekton projects/prj-sandbox-devops-9999/global/addresses/gke-gyeongsik-tekton
