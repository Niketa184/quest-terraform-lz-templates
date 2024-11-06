#...................................... Host Project Firewall .....................................#

module "vpc_firewall_rule" {
  for_each     = {
    for k, v in try(var.firewall,{}): k => v if v.delete != true
  }
  source                                = "git::https://github.com/Niketa184/quest-terraform-lz-modules//terraform-google-cloud-firewall"
  project_id                            = each.value.project_id 
  network_name                          = each.key
  rules                                 = each.value.rules
  depends_on                            = [ module.vpc_subnets ]
}
