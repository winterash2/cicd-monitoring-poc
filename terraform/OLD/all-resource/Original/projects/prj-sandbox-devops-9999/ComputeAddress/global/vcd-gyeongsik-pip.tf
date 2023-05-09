resource "google_compute_global_address" "vcd_gyeongsik_pip" {
  address      = "34.110.144.45"
  address_type = "EXTERNAL"
  ip_version   = "IPV4"
  name         = "vcd-gyeongsik-pip"
  project      = "prj-sandbox-devops-9999"
}
# terraform import google_compute_global_address.vcd_gyeongsik_pip projects/prj-sandbox-devops-9999/global/addresses/vcd-gyeongsik-pip
