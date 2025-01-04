terraform {
  required_version = ">= 1.3"
  required_providers {
    # tflint-ignore: terraform_unused_required_providers
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "= 3.58.0"
    }
    # tflint-ignore: terraform_unused_required_providers
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2, >= 1.2.22"
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "public_ip.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id            = var.subscription_id
  skip_provider_registration = true
}
