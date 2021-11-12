variable "vpcs" {
  type = map(
    object({
      default  = bool
      name     = string
      ip_range = string
      region   = string
    })
  )
}
