### Azure part ###
resource "azurerm_user_assigned_identity" "current" {
  location            = data.azurerm_resource_group.current.location
  name                = "cloudcustodian"
  resource_group_name = var.resource_group_name
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_federated_identity_credential" "current" {
  name                = "cloudcustodian"
  resource_group_name = var.resource_group_name
  audience            = ["api://AzureADTokenExchange"]
  issuer              = data.azurerm_kubernetes_cluster.current.oidc_issuer_url
  parent_id           = azurerm_user_assigned_identity.current.id
  subject             = "system:serviceaccount:${kubernetes_namespace.current.id}:cloudcustodian-sa"
}

resource "time_sleep" "azurerm_user_assigned_identity" {
  create_duration = "60s"
  depends_on      = [azurerm_user_assigned_identity.current]
}

resource "azurerm_role_assignment" "current" {
  scope                = data.azurerm_management_group.current.id
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.current.id
}

resource "azurerm_api_connection" "current" {
  name                = "cloudcustodian-teams"
  resource_group_name = var.resource_group_name
  managed_api_id      = "/subscriptions/${var.subscription_id}/providers/Microsoft.Web/locations/${data.azurerm_resource_group.current.location}/managedApis/teams"
  display_name        = "IT.InfraTeam@dpwapps.com"
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_resource_group_template_deployment" "current" {
  name                = var.logic_app_name
  resource_group_name = var.resource_group_name
  deployment_mode     = "Incremental"
  template_content    = templatefile("template.json", { location = data.azurerm_resource_group.current.location, loadbalancer_ip = "${data.azurerm_public_ip.current.ip_address}/32", azurerm_api_connection_id = azurerm_api_connection.current.id, logic_app_name = var.logic_app_name, managed_identity = azurerm_user_assigned_identity.current.id })
  depends_on = [
    azurerm_api_connection.current,
    azurerm_role_assignment.current
  ]
}

resource "azurerm_logic_app_trigger_http_request" "current" {
  name         = data.azurerm_logic_app_workflow.current.name
  logic_app_id = data.azurerm_logic_app_workflow.current.id
  schema       = <<SCHEMA
    {}
  SCHEMA
}

### Kubernetes part ###

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

resource "kubernetes_service_account" "current" {
  metadata {
    name      = "cloudcustodian-sa"
    namespace = kubernetes_namespace.current.id
    annotations = {
      "azure.workload.identity/client-id" = azurerm_user_assigned_identity.current.client_id
      "azure.workload.identity/tenant-id" = azurerm_user_assigned_identity.current.tenant_id
    }
    labels = {
      "azure.workload.identity/use" = "true"
    }
  }
}

resource "kubernetes_config_map" "current" {
  metadata {
    name      = "cloudcustodian-policies"
    namespace = kubernetes_namespace.current.id
  }
  data = {
    "policies.yaml" = "${templatefile("${path.root}/policies.yaml", { callback_url = azurerm_logic_app_trigger_http_request.current.callback_url })}"
  }
}

resource "kubernetes_cron_job" "current" {
  metadata {
    name      = "cloudcustodian"
    namespace = kubernetes_namespace.current.id
  }
  spec {
    schedule = "0 * * * *"
    job_template {
      metadata {}
      spec {
        active_deadline_seconds    = 300
        ttl_seconds_after_finished = 300
        backoff_limit              = 0
        template {
          metadata {
            labels = {
              "azure.workload.identity/use" = "true"
            }
          }
          spec {
            volume {
              name = "cloudcustodian-policies"
              config_map {
                name = "cloudcustodian-policies"
              }
            }
            service_account_name = "cloudcustodian-sa"
            restart_policy       = "Never"
            container {
              name    = "cloudcustodian"
              image   = "acrdpwinfra.azurecr.io/cloudcustodian:0.9"
              command = ["/bin/sh", "-c", "source custodian/bin/activate; python custodian/azuresubs.py -f custodian/subscriptions.yml; custodian/bin/c7n-org run -c custodian/subscriptions.yml -s custodian/output -u custodian/policies.yaml"]
              env {
                name  = "AZURE_USE_MSI"
                value = "1"
              }
              env {
                name  = "AZURE_SUBSCRIPTION_ID"
                value = var.subscription_id
              }
              env {
                name  = "AZURE_CLIENT_ID"
                value = azurerm_user_assigned_identity.current.client_id
              }
              env {
                name  = "TZ"
                value = "Asia/Dubai"
              }
              volume_mount {
                mount_path = "/custodian/policies.yaml"
                name       = "cloudcustodian-policies"
                read_only  = true
                sub_path   = "policies.yaml"
              }
            }
          }
        }
      }
    }
  }
  depends_on = [
    kubernetes_config_map.current,
    kubernetes_service_account.current
  ]
}