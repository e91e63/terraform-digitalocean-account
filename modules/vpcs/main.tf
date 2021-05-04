resource "digitalocean_vpc" "main" {
  for_each = var.vpcs

  ip_range = each.value.ip_range
  name     = each.value.name
  region   = each.value.region
}
