resource "google_compute_address" "nat_auto_ip_8999609_2_1676019855904613" {
  address      = "34.64.134.205"
  address_type = "EXTERNAL"
  name         = "nat-auto-ip-8999609-2-1676019855904613"
  network_tier = "PREMIUM"
  project      = "prj-sandbox-devops-9999"
  purpose      = "NAT_AUTO"
  region       = "asia-northeast3"
}
# terraform import google_compute_address.nat_auto_ip_8999609_2_1676019855904613 projects/prj-sandbox-devops-9999/regions/asia-northeast3/addresses/nat-auto-ip-8999609-2-1676019855904613
