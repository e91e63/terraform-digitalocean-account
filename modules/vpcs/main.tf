resource "digitalocean_vpc" "name" {
  for_each = var.vpcs

  ip_range = each.value.ip_range
  name     = each.value.name
  region   = each.value.region
}
