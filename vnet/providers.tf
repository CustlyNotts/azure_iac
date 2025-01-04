terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "~>4.2.0"
    }
    azureipam = {
      version = "~>1.0"
      source = "xtratuscloud/azureipam"
    }
  }
  backend "azurerm" {
    subscription_id      = <subscription_id>
    resource_group_name  = "rg-infrateam"
    storage_account_name = "dpwinfrateam"
    container_name       = "tfstate"
    key                  = "vnet.tfstate"
  }
}

provider "azureipam" {
  api_url = local.ipam_url
  token   = data.external.get_access_token.result.accessToken
}

provider "azurerm" {
  features {}
  subscription_id            = var.subscription_id
  resource_provider_registrations="none"
}

provider "azurerm" {
  alias = "system"
  features {}
  subscription_id = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
}

provider "azurerm" {
  alias = "UAE"
  features {}
  subscription_id = "cf524703-9d5e-4aa2-bbe9-975fe083f66a"
}

provider "azurerm" {
  alias = "APAC"
  features {}
  subscription_id = "2829b90f-e2a6-45f3-bcf7-35f4923df4e7"
}

provider "azurerm" {
  alias = "EUR"
  features {}
  subscription_id = "1b37d994-cdaf-4d33-b73d-afb406d36357"
}

provider "azurerm" {
  alias = "AMR"
  features {}
  subscription_id = "552154ff-433b-4cb2-bfa6-9d1c7249ef1f"
}

provider "azurerm" {
  alias = "SMARTUAE"
  features {}
  subscription_id = "113fbeb3-ce3b-4e2a-b3fd-f9176ff893f3"
}

provider "azurerm" {
  alias = "SMARTEUR"
  features {}
  subscription_id = "aa93819a-6849-4777-9858-d71c3c1d8260"
}

provider "azurerm" {
  alias = "SMARTAPAC"
  features {}
  subscription_id = "533104de-f76b-43d3-a427-ff34cfb55b3b"
}

provider "azurerm" {
  alias = "SMARTAMR"
  features {}
  subscription_id = "95cfe661-93f1-4a8c-a898-3e0a6417d194"
}
