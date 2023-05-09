resource "google_pubsub_topic" "gke_topic_tekton_demo" {
  name    = "gke-topic-tekton-demo"
  project = "prj-sandbox-devops-9999"
}
# terraform import google_pubsub_topic.gke_topic_tekton_demo projects/prj-sandbox-devops-9999/topics/gke-topic-tekton-demo
