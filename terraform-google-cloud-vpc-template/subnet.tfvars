subnets = {
  # ************************************* Network HUB Subnets Configuration *********************************** #

  # ................... HUB VPC Subnets Configuration .................. #
  "gcp-vpc-prd-hub-shr-1" = {
    delete                           = false
    project_id                       = "niketa"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-cmn-prv-tier-01" 
        subnet_ip                    = "10.23.225.128/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
      {
        subnet_name                  = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-log-prv-tier-01" 
        subnet_ip                    = "10.23.225.0/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
      {
        subnet_name                  = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-mon-prv-tier-01" 
        subnet_ip                    = "10.23.225.64/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
   # secondary_ranges = {}
  },
  # ............... End HUB VPC Subnets Configuration .................. #


  # ................. OUT (UNTRUST) VPC Subnets Configuration ................ #
  "gcp-vpc-prd-out-fw-1" = {
    delete                           = false
    project_id                       = "niketa"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-prd-out-fw-1-yyz-inf-pub-tier-01" 
        subnet_ip                    = "100.64.224.0/28"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
  #  secondary_ranges = {}
  }
  # ............. End Untrust VPC Subnets Configuration ................ #
}
