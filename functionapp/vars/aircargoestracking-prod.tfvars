subscription_id     = <subscription_id>
service_plan_name                                = "app-plan-trackingservice-prod"
os_type                                          = "Linux"
sku_name                                         = "EP1"
function_app_name                                = "aircargoestracking-prod"
resource_group_name                              = "rg-trackingservice-prod"
storage_account_name                             = "strgtrackingservicefnprd"
storage_account_kind                             = "StorageV2"
storage_account_cross_tenant_replication_enabled = false
https_only                                       = false
builtin_logging_enabled                          = false
client_certificate_mode                          = "Optional"
virtual_network_subnet_id                        = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-prod/subnets/snet-pushbased-logistics-tracking-prod"
identity_enabled                                 = true
identity_type                                    = "SystemAssigned"
tags = {
  "hidden-link: /app-insights-resource-id" : "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-prod/providers/microsoft.insights/components/otmcargoesflowintgprod",
  "hidden-link: /app-insights-instrumentation-key" : "fec07d90-cc6b-4c3d-8b87-bc95083ea7d6",
  "hidden-link: /app-insights-conn-string" : "InstrumentationKey=fec07d90-cc6b-4c3d-8b87-bc95083ea7d6;IngestionEndpoint=https://uaenorth-0.in.applicationinsights.azure.com/;LiveEndpoint=https://uaenorth.livediagnostics.monitor.azure.com/"
}