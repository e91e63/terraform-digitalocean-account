locals {
#  ams1 = {
#       ip_range = "10.243.0.0/24"
#     }
#     ams2 = {
#       ip_range = "10.243.1.0/24"
#     }
#     ams3 = {
#       ip_range = "10.243.2.0/24"
#     }
#     blr1 = {
#       active   = true
#       ip_range = "10.243.3.0/24"
#     }
#     fra1 = {
#       ip_range = "10.243.4.0/24"
#     }
#     lon1 = {
#       ip_range = "10.243.5.0/24"
#     }
#     nyc1 = {
#       active   = true
#       ip_range = "10.243.6.0/24"
#     }
#     nyc2 = {
#       ip_range = "10.243.7.0/24"
#     }
#     nyc3 = {
#       active   = true
#       ip_range = "10.243.8.0/24"
#     }
#     sfo1 = {
#       ip_range = "10.243.9.0/24"
#     }
#     sfo2 = {
#       active   = true
#       ip_range = "10.243.10.0/24"
#     }
#     sfo3 = {
#       active   = true
#       ip_range = "10.243.11.0/24"
#     }
#     sgp1 = {
#       ip_range = "10.243.12.0/24"
#     }
#     tor1 = {
#       ip_range = "10.243.13.0/24"
#     }

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
