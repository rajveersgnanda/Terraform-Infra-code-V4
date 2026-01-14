variable "rg_name" {
  description = "name of resource groups to create"
  type = map(object({
    name     = string
    location = string
  }))
}