resource "google_compute_network_endpoint_group" "k8s1_b74c81ed_default_el_terraform_eventlistener_8080_d05e280c" {
  description           = "{\"cluster-uid\":\"90f06f2b-781e-4298-a9dd-a600133d539b\",\"namespace\":\"default\",\"service-name\":\"el-terraform-eventlistener\",\"port\":\"8080\"}"
  name                  = "k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c"
  network               = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/networks/default"
  network_endpoint_type = "GCE_VM_IP_PORT"
  project               = "prj-sandbox-devops-9999"
  subnetwork            = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/regions/asia-northeast3/subnetworks/default"
  zone                  = "asia-northeast3-a"
}
# terraform import google_compute_network_endpoint_group.k8s1_b74c81ed_default_el_terraform_eventlistener_8080_d05e280c projects/prj-sandbox-devops-9999/zones/asia-northeast3-a/networkEndpointGroups/k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c
