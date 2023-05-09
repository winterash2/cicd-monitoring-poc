resource "google_compute_address" "nat_auto_ip_10767926_9_1676278261887839" {
  address      = "34.64.80.191"
  address_type = "EXTERNAL"
  name         = "nat-auto-ip-10767926-9-1676278261887839"
  network_tier = "PREMIUM"
  project      = "prj-sandbox-devops-9999"
  purpose      = "NAT_AUTO"
  region       = "asia-northeast3"
}
# terraform import google_compute_address.nat_auto_ip_10767926_9_1676278261887839 projects/prj-sandbox-devops-9999/regions/asia-northeast3/addresses/nat-auto-ip-10767926-9-1676278261887839
