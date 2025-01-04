data "azurerm_kubernetes_cluster" "current" {
  name                = var.aks_cluster_name
  resource_group_name = var.aks_resource_group_name
}

# data "azurerm_resource_group" "storage_account" {
#   name = var.storage_account_resource_group_name
# }

data "azurerm_storage_account" "current" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name
}