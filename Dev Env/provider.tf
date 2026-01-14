terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.40"
    }
  }
  backend "azurerm" {
    resource_group_name  = "frontend-rg"
    storage_account_name = "frotendstg001"
    container_name       = "backend-tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b14a3699-29f5-4013-af1a-5ee5bcc0c511"
}
