resource "google_storage_bucket" "dataprep_staging_c965916c_cb11_439b_b0bc_252d900f821e" {
  force_destroy            = false
  location                 = "US"
  name                     = "dataprep-staging-c965916c-cb11-439b-b0bc-252d900f821e"
  project                  = "prj-sandbox-devops-9999"
  public_access_prevention = "inherited"
  storage_class            = "MULTI_REGIONAL"
}
# terraform import google_storage_bucket.dataprep_staging_c965916c_cb11_439b_b0bc_252d900f821e dataprep-staging-c965916c-cb11-439b-b0bc-252d900f821e
