module "resource_groups" {
  source = "../modules/azurerm_resource_group" # Child module ka rasta

  rg_name = var.rg_names # tfvars se data pass ho raha hai
}

module "storage_accounts" {
  source     = "../modules/azurerm_storage_account"
  stg        = var.stg
  depends_on = [module.resource_groups] # Pehle RG module khatam hone ka wait karega
}

module "virtual_networks" {
  source     = "../modules/azurerm_virtual_network"
  vnet_map   = var.vnet_map
}


module "subnets" {
  source     = "../modules/azurerm_subnet"
  rg_name    = "frontend-rg"
  vnet_name  = module.virtual_networks.vnet_names["vnet1"]        # VNet module se dynamic naam uthana
  subnet_map = var.subnet_map                                     # tfvars se subnets ka data pass karna
}
