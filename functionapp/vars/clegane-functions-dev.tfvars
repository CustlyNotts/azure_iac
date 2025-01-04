subscription_id     = <subscription_id>
service_plan_name                                = "ASP-rgcargoescleganedev"
os_type                                          = "Windows"
sku_name                                         = "B1"
function_app_name                                = "cargoes-flow-functions-staging"
resource_group_name                              = "rg-cargoesclegane-dev"
storage_account_name                             = "rgcargoescleganedev8bb3"
storage_account_resource_group_name              = "rg-cargoesclegane-dev"
storage_account_kind                             = "Storage"
storage_account_cross_tenant_replication_enabled = false
https_only                                       = true
builtin_logging_enabled                          = false
client_certificate_mode                          = "Required"
virtual_network_subnet_id                        = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dev/subnets/snet-cleganefunctionapp-dev"
identity_enabled                                 = true
node_version                                     = "~18"
identity_type                                    = "SystemAssigned"
tags = {
  "Application Name": "Cargoes Flow"
  "ENV" : "DEV"

}