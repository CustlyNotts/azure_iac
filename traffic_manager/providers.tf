terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
#      version = "= 3.75.0"
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "traffic_manager.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  skip_provider_registration = true

}
