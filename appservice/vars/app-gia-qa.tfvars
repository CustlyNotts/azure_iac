subscription_id     = <subscription_id>
resource_group_name                    = "rg-gia-qa"
location                               = "uaenorth"
os_type                                = "Linux"
sku_name                               = "B1"
service_plan_custom_name               = "appsvcplan-gia-qa"
app_service_custom_name                = "app-gia-qa"
app_service_vnet_integration_subnet_id = "/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa/subnets/snet-gia-qa-app"
application_insights_enabled           = false
staging_slot_enabled                   = false
site_config = {
  ftps_state              = "AllAllowed"
  scm_minimum_tls_version = "1.0"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
}
extra_tags = {
  "Application Name" : "GIA"
  "Application Owner" : "Shaytel Patel"
  "ENV" : "QA"
  "Created By" : "Ayodele Orebe"
}

