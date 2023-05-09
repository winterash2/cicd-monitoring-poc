resource "google_bigquery_dataset" "324qergseat5234qerwsdf" {
  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }

  access {
    role          = "OWNER"
    user_by_email = "shmoon2@wemakeprice.com"
  }

  access {
    role          = "READER"
    special_group = "projectReaders"
  }

  access {
    role          = "WRITER"
    special_group = "projectWriters"
  }

  dataset_id                 = "324qergseat5234qerwsdf"
  delete_contents_on_destroy = false
  location                   = "us-central1"
  project                    = "prj-sandbox-devops-9999"
}
# terraform import google_bigquery_dataset.324qergseat5234qerwsdf projects/prj-sandbox-devops-9999/datasets/324qergseat5234qerwsdf
