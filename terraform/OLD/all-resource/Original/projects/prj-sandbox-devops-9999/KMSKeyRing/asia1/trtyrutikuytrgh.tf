resource "google_kms_key_ring" "trtyrutikuytrgh" {
  location = "asia1"
  name     = "trtyrutikuytrgh"
  project  = "prj-sandbox-devops-9999"
}
# terraform import google_kms_key_ring.trtyrutikuytrgh projects/prj-sandbox-devops-9999/locations/asia1/keyRings/trtyrutikuytrgh
