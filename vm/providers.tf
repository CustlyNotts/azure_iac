terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "3.88.0"
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "vm.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  #skip_provider_registration = true
  # Attribute resource_provider_registrations value must be one of: ["none" "legacy" "core" "extended" "all"], got: "false"
  resource_provider_registrations="none"
}


# terraform {
#   required_version = ">= 1.2"

#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = ">= 3.11, < 4.0"
#     }
#     random = {
#       source  = "hashicorp/random"
#       version = ">=3.0.0"
#     }
#   }
# }
