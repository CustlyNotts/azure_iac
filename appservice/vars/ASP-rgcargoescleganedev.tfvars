subscription_id     = <subscription_id>
resource_group_name                    = "rg-cargoesclegane-dev"
location                               = "uaenorth"
os_type                                = "Windows"
sku_name                               = "B1"
service_plan_custom_name               = "ASP-rgcargoescleganedev"
app_service_custom_name                = "clegane-functions-dev"
app_service_vnet_integration_subnet_id = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dev/subnets/snet-cleganefunctionapp-dev"
application_insights_enabled           = false
staging_slot_enabled                   = false
https_only                             = true
extra_tags = {
  "Application Name" : "Clegane"
  "Application Owner" : "Mostafa"
  "ENV" : "DEV"
 
}

app_settings                                   = {
          "AzureWebJobsStorage"         = <azure_key>
          "FUNCTIONS_EXTENSION_VERSION" = "~4"
          "FUNCTIONS_WORKER_RUNTIME"    = "node"
          "NODE_ENV"                    = "qa"
          "WEBSITE_RUN_FROM_PACKAGE"    = "1"
}

site_config = {
  ftps_state  = "FtpsOnly"
  scm_minimum_tls_version = "1.2"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
  allowed_origins = ["https://portal.azure.com"]
  support_credentials = false
}
