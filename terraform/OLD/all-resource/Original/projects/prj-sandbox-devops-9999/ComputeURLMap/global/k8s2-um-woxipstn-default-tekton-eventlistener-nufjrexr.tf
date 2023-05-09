resource "google_compute_url_map" "k8s2_um_woxipstn_default_tekton_eventlistener_nufjrexr" {
  default_service = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/backendServices/k8s-be-30933--b74c81ed5ad4dc2c"

  host_rule {
    hosts        = ["tekton.eventlistener.test-for-lswoo.kro.kr"]
    path_matcher = "host2b76e95c8a6c2f339740e3f42a9bf714"
  }

  name = "k8s2-um-woxipstn-default-tekton-eventlistener-nufjrexr"

  path_matcher {
    default_service = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/backendServices/k8s-be-30933--b74c81ed5ad4dc2c"
    name            = "host2b76e95c8a6c2f339740e3f42a9bf714"

    path_rule {
      paths   = ["/*"]
      service = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/backendServices/k8s1-b74c81ed-default-el-terraform-eventlistener-8080-d05e280c"
    }
  }

  project = "prj-sandbox-devops-9999"
}
# terraform import google_compute_url_map.k8s2_um_woxipstn_default_tekton_eventlistener_nufjrexr projects/prj-sandbox-devops-9999/global/urlMaps/k8s2-um-woxipstn-default-tekton-eventlistener-nufjrexr
