module "default_vpcs" {
  source = "./modules/default-vpcs"

  active_regions = var.active_regions
  vpc_ip_ranges  = var.networking_conf.default_vpc_ip_ranges
}
