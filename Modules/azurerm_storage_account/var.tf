variable "stg" {
  type = map(object({
    name         = string
    rg_name      = string
    location     = string
    account_tier = string
  }))
}
