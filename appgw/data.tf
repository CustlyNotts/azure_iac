data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}
data "azurerm_key_vault" "current" {
  provider            = azurerm.key_vault
  name                = var.key_vault_name
  resource_group_name = var.key_vault_resource_group_name == null ? var.resource_group_name : var.key_vault_resource_group_name
}
#data "azuread_service_principal" "current" {
#  display_name = lower("${var.name}")
#  depends_on = [
#    azurerm_user_assigned_identity.current
#  ]
#}
