variable "active_regions" {
  default = []
  type    = set(string)
}

variable "vpc_ip_ranges" {
  default = {}
  type    = any
}
