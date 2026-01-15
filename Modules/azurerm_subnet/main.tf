resource "azurerm_subnet" "snet" {
  for_each             = var.subnet_map
  name                 = each.value.name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [each.value.address_prefix]
}