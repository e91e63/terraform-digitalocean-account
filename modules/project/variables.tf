variable "project_conf" {
  type = object({
    description = string
    environment = string
    name        = string
    purpose     = string
  })
}
