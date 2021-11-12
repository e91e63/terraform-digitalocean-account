variable "conf" {
  type = object({
    default_vpcs = map(object({
      active = bool
    }))
  })
}
