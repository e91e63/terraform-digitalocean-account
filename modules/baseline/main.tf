locals {
  default_vpcs = {
    ams1 = { ip_range = "10.243.0.0/24" }
    ams2 = { ip_range = "10.243.1.0/24" }
    ams3 = { ip_range = "10.243.2.0/24" }
    blr1 = { ip_range = "10.243.3.0/24" }
    fra1 = { ip_range = "10.243.4.0/24" }
    lon1 = { ip_range = "10.243.5.0/24" }
    nyc1 = { ip_range = "10.243.6.0/24" }
    nyc2 = { ip_range = "10.243.7.0/24" }
    nyc3 = { ip_range = "10.243.8.0/24" }
    sfo1 = { ip_range = "10.243.9.0/24" }
    sfo2 = { ip_range = "10.243.10.0/24" }
    sfo3 = { ip_range = "10.243.11.0/24" }
    sgp1 = { ip_range = "10.243.12.0/24" }
    tor1 = { ip_range = "10.243.13.0/24" }
  }

  vpcs = { for region, conf in var.conf.default_vpcs : region => {
    active   = conf.active
    default  = true
    ip_range = local.default_vpcs[region].ip_range
    name     = "${region}-default"
    region   = region
    } if conf.active
  }
}

module "vpcs" {
  source = "../vpcs"

  vpcs = local.vpcs
}

terraform {
  required_version = "~> 1"
}
