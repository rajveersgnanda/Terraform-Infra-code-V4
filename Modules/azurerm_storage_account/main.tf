resource "azurerm_storage_account" "stgacc" {
  for_each = var.stg

  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = "LRS"

blob_properties {
    versioning_enabled = true
    
    delete_retention_policy {
      days = 7
    }
  }
}

resource "azurerm_storage_container" "container_backend" {
  name                  = "backend-tfstate" #This Container is for backend tfstate i.e; state file
  storage_account_id    = azurerm_storage_account.stgacc["sa1"].id
  container_access_type = "private"
}


resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.stgacc["sa2"].id
  container_access_type = "private"
}
