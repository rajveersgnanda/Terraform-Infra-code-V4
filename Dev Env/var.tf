variable "rg_names" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "stg" {
  type = map(object({
    name         = string
    rg_name      = string
    location     = string
    account_tier = string
  }))
}

variable "vnet_map" {
  type = map(object({
    name          = string
    location      = string
    rg_name       = string
    address_space = string
  }))
}

variable "subnet_map" {
  type = map(object({
    name           = string
    address_prefix = string
  }))
}


