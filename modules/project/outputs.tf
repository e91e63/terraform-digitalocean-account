output "info" {
  value = {
    id   = digitalocean_project.main.id
    name = digitalocean_project.main.name
  }
}
