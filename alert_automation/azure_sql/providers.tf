terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "= 3.58.0"
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "alerts_automation.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}