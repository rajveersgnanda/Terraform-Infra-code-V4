module "resource_groups" {
  source = "../modules/azurerm_resource_group" # Child module ka rasta

  rg_name = var.rg_names # tfvars se data pass ho raha hai
}

module "storage_accounts" {
  source     = "../modules/azurerm_storage_account" # Child module ka rasta
  stg        = var.stg
  depends_on = [module.resource_groups] # Pehle RG module khatam hone ka wait karega                           # tfvars se data pass ho raha hai
}

