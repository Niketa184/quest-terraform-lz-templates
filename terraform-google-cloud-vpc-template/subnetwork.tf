#.....................................Host Project Subnet ....................................#

module "vpc_subnets" {
  for_each     = {
    for k, v in try(var.subnets,{}): k => v if v.delete != true
  }
  source                                = "git::https://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@github.com/Niketa184/quest-terraform-lz-modules.git//terraform-google-cloud-subnet?ref=v1.0.0"
  project_id                            = each.value.project_id
  network_name                          = each.key
  subnets                               = each.value.subnets
  #secondary_ranges                      = each.value.secondary_ranges
  #purpose                               = each.value.purpose
  #role                                  = each.value.role
  depends_on                            = [ module.vpc ]
}
