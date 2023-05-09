resource "google_bigquery_dataset" "test2" {
  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }

  access {
    role          = "OWNER"
    user_by_email = "service-773410544731@gcp-sa-dataplex.iam.gserviceaccount.com"
  }

  access {
    role          = "READER"
    special_group = "projectReaders"
  }

  access {
    role          = "WRITER"
    special_group = "projectWriters"
  }

  dataset_id                 = "test2"
  delete_contents_on_destroy = false

  labels = {
    goog-dataplex-zone-id    = "test2"
    goog-dataplex-project-id = "prj-sandbox-devops-9999"
    goog-dataplex-lake-id    = "test"
  }

  location = "us-central1"
  project  = "prj-sandbox-devops-9999"
}
# terraform import google_bigquery_dataset.test2 projects/prj-sandbox-devops-9999/datasets/test2
