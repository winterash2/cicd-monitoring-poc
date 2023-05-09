resource "google_storage_bucket" "cloud_ai_platform_997f18e8_25b5_4337_b384_d3e5816c7deb" {
  cors {
    max_age_seconds = 3600
    method          = ["GET", "HEAD", "POST", "PUT"]
    origin          = ["https://*.cloud.google.com", "https://*.firebase.google.com", "https://*.corp.google.com", "https://*.crowdsource.google.com", "https://*.datacompute.google.com", "https://datacompute.google.com"]
    response_header = ["Content-Type, Range", "Content-Type", "Access-Control-Allow-Origin"]
  }

  force_destroy            = false
  location                 = "US-CENTRAL1"
  name                     = "cloud-ai-platform-997f18e8-25b5-4337-b384-d3e5816c7deb"
  project                  = "prj-sandbox-devops-9999"
  public_access_prevention = "inherited"
  storage_class            = "REGIONAL"
}
# terraform import google_storage_bucket.cloud_ai_platform_997f18e8_25b5_4337_b384_d3e5816c7deb cloud-ai-platform-997f18e8-25b5-4337-b384-d3e5816c7deb
