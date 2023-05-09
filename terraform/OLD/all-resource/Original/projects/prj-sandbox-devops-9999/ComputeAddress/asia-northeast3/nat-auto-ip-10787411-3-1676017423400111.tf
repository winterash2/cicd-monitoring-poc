resource "google_compute_address" "nat_auto_ip_10787411_3_1676017423400111" {
  address      = "34.64.84.101"
  address_type = "EXTERNAL"
  name         = "nat-auto-ip-10787411-3-1676017423400111"
  network_tier = "PREMIUM"
  project      = "prj-sandbox-devops-9999"
  purpose      = "NAT_AUTO"
  region       = "asia-northeast3"
}
# terraform import google_compute_address.nat_auto_ip_10787411_3_1676017423400111 projects/prj-sandbox-devops-9999/regions/asia-northeast3/addresses/nat-auto-ip-10787411-3-1676017423400111
