resource "digitalocean_vpc" "main" {
  for_each = var.vpcs

  ip_range = each.value.ip_range
  name     = each.value.name
  region   = each.value.region
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2"
    }
  }
  required_version = "~> 1"
}
