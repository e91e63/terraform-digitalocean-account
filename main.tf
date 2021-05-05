locals {
  vpcs_default = {
    for region, vpc in var.network_conf.vpcs_default :
    region => merge(
      {
        name   = region
        region = region
      },
      vpc
    )
    if lookup(var.network_conf.vpcs_default[region], "active", false)
  }
}

module "vpcs" {
  source = "./modules/vpcs"

  vpcs = local.vpcs_default
}
