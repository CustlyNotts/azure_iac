subscription_id     = <subscription_id>
resource_group_name                    = "rg-cargoesflow-prod-dr"
location                               = "uksouth"
os_type                                = "Linux"
sku_name                               = "B2"
#service_plan_custom_name               = "asp-cargoesflow-dr"
app_service_custom_name                = "asp-cargoesflow-dr"
app_service_vnet_integration_subnet_id = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-dr-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dr/subnets/snet-cargoesflowfunction-prod-dr"
application_insights_enabled           = false
staging_slot_enabled                   = false
site_config = {
  ftps_state              = "Disabled"
  scm_minimum_tls_version = "1.2"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
}
extra_tags = {
  "Application Name" : "Caroges Flow"
  "Application Owner" : "Mostafa Elsayed"
  "ENV" : "PROD"
 
}

 