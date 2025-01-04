data "azurerm_client_config" "current" {
}

data "azuread_service_principal" "current" {
  display_name = split("/", data.azurerm_kubernetes_cluster.current.key_vault_secrets_provider[0].secret_identity[0].user_assigned_identity_id)[8]
}

data "azurerm_kubernetes_cluster" "current" {
  name                = var.aks_cluster_name
  resource_group_name = var.aks_resource_group_name
}

data "kubectl_path_documents" "current" {
  pattern = "./manifests/*.yaml"
  vars = {
    userAssignedIdentityID = data.azurerm_kubernetes_cluster.current.key_vault_secrets_provider[0].secret_identity[0].client_id,
    namespace              = var.namespace_name,
    agent_image            = var.agent_image,
    tenant_id              = data.azurerm_client_config.current.tenant_id,
    keyvault_name          = var.keyvault_name,
    azp_pool               = var.aks_cluster_name,
    azp_token_secret       = var.azp_token_secret,
    azp_url                = var.azp_url
  }
}

data "azurerm_key_vault" "current" {
  name                = var.keyvault_name
  resource_group_name = var.keyvault_resource_group_name
}