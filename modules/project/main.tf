resource "digitalocean_project" "main" {
  description = var.project_conf.description
  environment = var.project_conf.environment
  name        = var.project_conf.name
  purpose     = var.project_conf.purpose

  lifecycle {
    ignore_changes = [
      resources,
    ]
  }
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
