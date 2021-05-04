variable "active_regions" {
  default = []
  type    = list(string)
}

variable "name" {
  default = "k8s"
  type    = string
}

variable "network_conf" {
  default = {}
  type    = any
}
