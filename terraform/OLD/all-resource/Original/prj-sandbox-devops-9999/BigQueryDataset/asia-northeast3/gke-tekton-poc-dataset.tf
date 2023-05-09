resource "google_bigquery_dataset" "gke_tekton_poc_dataset" {
  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }

  access {
    role          = "OWNER"
    user_by_email = "jgs@wemakeprice.com"
  }

  access {
    role          = "READER"
    special_group = "projectReaders"
  }

  access {
    role          = "WRITER"
    special_group = "projectWriters"
  }

  dataset_id                 = "gke_tekton_poc_dataset"
  delete_contents_on_destroy = false
  location                   = "asia-northeast3"
  project                    = "prj-sandbox-devops-9999"
}
# terraform import google_bigquery_dataset.gke_tekton_poc_dataset projects/prj-sandbox-devops-9999/datasets/gke_tekton_poc_dataset
