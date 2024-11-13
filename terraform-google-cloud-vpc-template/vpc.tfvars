vpc                             = {

# .............. Network HUB Project VPCs Configuration ............. #
  "gcp-vpc-prd-hub-shr-1"       = {
    delete                      = true
    description                 = "HUB Shared VPC used to share Network Component for Infra Shared Services"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "niketa"
    delete_routes               = true
  },
  "gcp-vpc-prd-out-fw-1"        = {
    delete                      = true
    description                 = "Out VPC for Firewall to connect with public/internet & network/services"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "niketa"
    delete_routes               = true
  }
}
