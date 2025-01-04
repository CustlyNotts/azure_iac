subscription_id     = <subscription_id>
service_plan_name = "asp-trackingservice-demo"
os_type           = "Linux"
#sku_name                                         = "basic"
function_app_name                                = "fn-wfm-intg-demo"
resource_group_name                              = "rg-trackingservice-demo"
storage_account_name                             = "strgtrackingservicefndev"
storage_account_kind                             = "Storage"
storage_account_cross_tenant_replication_enabled = false
https_only                                       = true
builtin_logging_enabled                          = false
client_certificate_mode                          = "Required"
virtual_network_subnet_id                        = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-trackingservice-demo"
identity_enabled                                 = true
identity_type                                    = "SystemAssigned"
#tags = {
#"hidden-link: /app-insights-resource-id" : "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-dev/providers/microsoft.insights/components/cargoes-flow-functions",
#"hidden-link: /app-insights-instrumentation-key" : "d8bef991-e69d-425d-b350-50b67e28bf99",
#"hidden-link: /app-insights-conn-string" : "InstrumentationKey=d8bef991-e69d-425d-b350-50b67e28bf99;IngestionEndpoint=https://uaenorth-0.in.applicationinsights.azure.com/;LiveEndpoint=https://uaenorth.livediagnostics.monitor.azure.com/"
#}
