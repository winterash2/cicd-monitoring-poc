resource "google_compute_network_endpoint_group" "k8s1_b713ed67_tekton_pipelines_tekton_dashboard_9097_941d933e" {
  description           = "{\"cluster-uid\":\"3312ea4b-41f7-4411-93df-e819fa1f5244\",\"namespace\":\"tekton-pipelines\",\"service-name\":\"tekton-dashboard\",\"port\":\"9097\"}"
  name                  = "k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e"
  network               = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  network_endpoint_type = "GCE_VM_IP_PORT"
  project               = "prj-sandbox-devops-9999"
  subnetwork            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/default"
  zone                  = "asia-northeast3-b"
}
# terraform import google_compute_network_endpoint_group.k8s1_b713ed67_tekton_pipelines_tekton_dashboard_9097_941d933e projects/prj-sandbox-devops-9999/zones/asia-northeast3-b/networkEndpointGroups/k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e
