variable "vpcs" {
  type = map(
    object({
      name     = string
      ip_range = string
      region   = string
    })
  )
}
