
resource "kubernetes_namespace" "current" {
  metadata {
    name = var.namespace_name
  }
  lifecycle {
    ignore_changes = [
      metadata.0.annotations["cattle.io/status"],
      metadata.0.annotations["lifecycle.cattle.io/create.namespace-auth"]
    ]
  }
}

resource "helm_release" "keda" {
  name      = "keda"
  namespace = kubernetes_namespace.current.id
  chart     = "${path.root}/helm/charts/keda"
}

resource "kubectl_manifest" "current" {
  count     = length(data.kubectl_path_documents.current.documents)
  yaml_body = element(data.kubectl_path_documents.current.documents, count.index)
  depends_on = [
    kubernetes_namespace.current,
    helm_release.keda,
    azurerm_key_vault_access_policy.current
  ]
}

resource "azurerm_key_vault_access_policy" "current" {
  key_vault_id            = data.azurerm_key_vault.current.id
  tenant_id               = data.azurerm_client_config.current.tenant_id
  object_id               = data.azuread_service_principal.current.id
  key_permissions         = ["Get", "List"]
  secret_permissions      = ["Get", "List"]
  certificate_permissions = ["Get", "List"]
}