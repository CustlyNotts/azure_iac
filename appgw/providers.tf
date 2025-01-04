terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "= 3.58.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      #version = "~> 2.0"  # Adjust the version as needed
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "appgw.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
provider "azurerm" {
  alias = "key_vault"
  features {}
  subscription_id = var.key_vault_subscription_id == null ? var.subscription_id : var.key_vault_subscription_id
}