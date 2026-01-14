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
