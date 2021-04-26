resource "digitalocean_vpc" "main" {
  for_each = var.active_regions

  ip_range = var.vpc_ip_ranges[each.value]
  name     = each.value
  region   = each.value
}
