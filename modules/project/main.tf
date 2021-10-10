resource "digitalocean_project" "main" {
  description = var.project_conf.description
  environment = var.project_conf.environment
  name        = var.project_conf.name
  purpose     = var.project_conf.purpose
}
