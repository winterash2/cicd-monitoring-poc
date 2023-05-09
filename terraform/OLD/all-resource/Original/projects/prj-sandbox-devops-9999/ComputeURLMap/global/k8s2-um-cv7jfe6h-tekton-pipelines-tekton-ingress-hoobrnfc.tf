resource "google_compute_url_map" "k8s2_um_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc" {
  default_service = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/backendServices/k8s-be-31610--b713ed6709598c5a"

  host_rule {
    hosts        = ["*"]
    path_matcher = "host3389dae361af79b04c9c8e7057f60cc6"
  }

  name = "k8s2-um-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc"

  path_matcher {
    default_service = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/backendServices/k8s-be-31610--b713ed6709598c5a"
    name            = "host3389dae361af79b04c9c8e7057f60cc6"

    path_rule {
      paths   = ["/*"]
      service = "https://www.googleapis.com/compute/v1/projects/prj-sandbox-devops-9999/global/backendServices/k8s1-b713ed67-tekton-pipelines-tekton-dashboard-9097-941d933e"
    }
  }

  project = "prj-sandbox-devops-9999"
}
# terraform import google_compute_url_map.k8s2_um_cv7jfe6h_tekton_pipelines_tekton_ingress_hoobrnfc projects/prj-sandbox-devops-9999/global/urlMaps/k8s2-um-cv7jfe6h-tekton-pipelines-tekton-ingress-hoobrnfc
