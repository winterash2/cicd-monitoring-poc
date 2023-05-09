# # 폴더
# resource "google_folder" "fdr-prototype" {
#   display_name = "fdr-prototype"
#   parent       = "organizations/267434016700" # organization threetier.link
# }

# 프로젝트

# resource "google_project" "prj-prototype-main" {
#   name       = "prj-prototype-main"
#   project_id = lower(random_id.prj-prototype-main-id.id)
#   folder_id  = google_folder.fdr-prototype.folder_id
#   billing_account     = "01ACC3-770982-BD9F85" # billing account가 없으면, terraform apply 할 때마다 이걸 지워버리는데, 그러면 billing account 설정한걸 계속 지워서 문제가 생김
#   auto_create_network = false # default vpc 생성 안 함
# }

# 폴더랑 프로젝트는 수동으로 생성하는 것으로...

# VPC
resource "google_compute_network" "vpc-ob-sb-share-base-0943" {
  project                 = var.project-id-prj-ob-shared-base-0943
  name                    = "vpc-ob-sb-share-base-0943"
  auto_create_subnetworks = false
  mtu                     = 1460
}

# 서브넷
resource "google_compute_subnetwork" "sbn-ob-sb-service-0943" {
  project                  = var.project-id-prj-ob-shared-base-0943
  name                     = "sbn-ob-sb-service-0943"
  purpose                  = "None"
  region                   = "asia-northeast3"
  stack_type               = "IPV4_ONLY"
  ip_cidr_range            = "10.0.1.0/24"
  network                  = google_compute_network.vpc-ob-sb-share-base-0943.id
  private_ip_google_access = true
  log_config {
    aggregation_interval = "INTERVAL_5_SEC"
    flow_sampling        = "0.5"
  }
}

