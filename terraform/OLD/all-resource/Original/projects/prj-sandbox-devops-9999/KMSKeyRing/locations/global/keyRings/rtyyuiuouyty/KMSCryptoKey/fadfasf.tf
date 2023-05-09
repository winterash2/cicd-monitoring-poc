resource "google_kms_crypto_key" "fadfasf" {
  destroy_scheduled_duration = "86400s"
  key_ring                   = "projects/prj-sandbox-devops-9999/locations/global/keyRings/rtyyuiuouyty"
  name                       = "fadfasf"
  purpose                    = "ENCRYPT_DECRYPT"
  rotation_period            = "7776000s"

  version_template {
    algorithm        = "GOOGLE_SYMMETRIC_ENCRYPTION"
    protection_level = "SOFTWARE"
  }
}
# terraform import google_kms_crypto_key.fadfasf projects/prj-sandbox-devops-9999/locations/global/keyRings/rtyyuiuouyty/cryptoKeys/fadfasf
