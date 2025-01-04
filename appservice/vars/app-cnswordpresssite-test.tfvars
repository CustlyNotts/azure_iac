subscription_id     = <subscription_id>
resource_group_name                    = "rg-wordpress-cns"
location                               = "UK South "
os_type                                = "Linux"
sku_name                               = "P1v2"
service_plan_custom_name               = "appsvcplan-cnsworpresssite-test"
app_service_custom_name                = "app-cnswordpresssite-test"
app_service_vnet_integration_subnet_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-wordpress-cns/providers/Microsoft.Network/virtualNetworks/Vnet-wordpress-nonprod/subnets/sub-wordpress2"
application_insights_enabled           = false
staging_slot_enabled                   = false
site_config = {
  ftps_state              = "AllAllowed"
  scm_minimum_tls_version = "1.0"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
}
extra_tags = {
  "Application Name" : "Mawani CNS"
  "Application Owner" : "Daniel Stuart"
  "ENV" : "PROD"
}
