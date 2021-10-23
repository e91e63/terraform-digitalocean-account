terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2"
    }

    local = {
      source = "hashicorp/local"
    }
  }

  required_version = "~> 1"
}
