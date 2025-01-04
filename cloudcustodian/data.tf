data "azurerm_kubernetes_cluster" "current" {
  name                = var.aks_cluster_name
  resource_group_name = var.resource_group_name
}

data "azurerm_logic_app_workflow" "current" {
  name                = azurerm_resource_group_template_deployment.current.name
  resource_group_name = azurerm_resource_group_template_deployment.current.resource_group_name
}

data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}

data "azurerm_management_group" "current" {
  name = "mgdpwgroup"
}

data "azuread_service_principal" "current" {
  display_name = azurerm_user_assigned_identity.current.name
  depends_on   = [time_sleep.azurerm_user_assigned_identity]
}

data "azurerm_lb" "current" {
  name                = "kubernetes"
  resource_group_name = data.azurerm_kubernetes_cluster.current.node_resource_group
}

data "azurerm_public_ip" "current" {
  name                = split("/", data.azurerm_lb.current.frontend_ip_configuration[0].public_ip_address_id)[8]
  resource_group_name = data.azurerm_kubernetes_cluster.current.node_resource_group
}