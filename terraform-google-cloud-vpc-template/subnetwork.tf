#.....................................Host Project Subnet ....................................#

module "vpc_subnets" {
  for_each     = {
    for k, v in try(var.subnets,{}): k => v if v.delete != true
  }
  source                                = "git::https://github.com/Niketa184/quest-terraform-lz-modules/tree/main/terraform-google-cloud-subnet"
  project_id                            = each.value.project_id
  network_name                          = each.key
  subnets                               = each.value.subnets
  secondary_ranges                      = each.value.secondary_ranges
  #purpose                               = each.value.purpose
  #role                                  = each.value.role
  depends_on                            = [ module.vpc ]
}