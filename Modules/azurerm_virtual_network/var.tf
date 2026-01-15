variable "vnet_map" {
  type = map(object({
    name          = string
    location      = string
    rg_name       = string
    address_space = string
  }))
}