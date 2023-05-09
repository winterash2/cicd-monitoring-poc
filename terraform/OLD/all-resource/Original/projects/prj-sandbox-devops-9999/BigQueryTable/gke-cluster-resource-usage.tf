resource "google_bigquery_table" "gke_cluster_resource_usage" {
  dataset_id = "gke_tekton_poc_dataset"
  project    = "prj-sandbox-devops-9999"
  schema     = "[{\"name\":\"cluster_location\",\"type\":\"STRING\"},{\"name\":\"cluster_name\",\"type\":\"STRING\"},{\"name\":\"namespace\",\"type\":\"STRING\"},{\"name\":\"resource_name\",\"type\":\"STRING\"},{\"name\":\"sku_id\",\"type\":\"STRING\"},{\"name\":\"start_time\",\"type\":\"TIMESTAMP\"},{\"name\":\"end_time\",\"type\":\"TIMESTAMP\"},{\"name\":\"fraction\",\"type\":\"FLOAT\"},{\"name\":\"cloud_resource_size\",\"type\":\"INTEGER\"},{\"fields\":[{\"name\":\"key\",\"type\":\"STRING\"},{\"name\":\"value\",\"type\":\"STRING\"}],\"mode\":\"REPEATED\",\"name\":\"labels\",\"type\":\"RECORD\"},{\"fields\":[{\"name\":\"id\",\"type\":\"STRING\"}],\"name\":\"project\",\"type\":\"RECORD\"},{\"fields\":[{\"name\":\"amount\",\"type\":\"FLOAT\"},{\"name\":\"unit\",\"type\":\"STRING\"}],\"name\":\"usage\",\"type\":\"RECORD\"}]"
  table_id   = "gke_cluster_resource_usage"

  time_partitioning {
    type = "DAY"
  }
}
# terraform import google_bigquery_table.gke_cluster_resource_usage projects/prj-sandbox-devops-9999/datasets/gke_tekton_poc_dataset/tables/gke_cluster_resource_usage
