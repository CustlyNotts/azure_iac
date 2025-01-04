subscription_id     = <subscription_id>
resource_group_name                    = "rg-trackingservice-dev"
location                               = "uaenorth"
os_type                                = "Linux"
sku_name                               = "B3"
#service_plan_custom_name               = "asp-trackingservice-dev"
app_service_custom_name                = "asp-trackingservice-nonprod"
app_service_vnet_integration_subnet_id = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-functionapp-dev"
application_insights_enabled           = false
staging_slot_enabled                   = false
site_config = {
  ftps_state              = "Disabled"
  scm_minimum_tls_version = "1.2"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
}
extra_tags = {
  "Application Name" : "Tracking Service"
  "Application Owner" : "Mohit Lal"
  "ENV" : "DEV"
 
}

