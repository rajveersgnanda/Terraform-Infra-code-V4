variable "rg_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_map" {
  type = map(object({
    name           = string
    address_prefix = string
  }))
}