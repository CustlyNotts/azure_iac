data "azurerm_kubernetes_cluster" "current" {
  name                = var.cluster_name
  resource_group_name = var.resource_group
}