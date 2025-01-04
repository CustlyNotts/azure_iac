terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "= 3.0.1"
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "eventhub.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
