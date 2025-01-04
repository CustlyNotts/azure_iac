subscription_id     = <subscription_id>
resource_group_name                    = "rg-ems-dev"
location                               = "uaenorth"
os_type                                = "Windows"
sku_name                               = "B1"
service_plan_custom_name               = "appsvcplan-ems-backend-dev"
app_service_custom_name                = "app-ems-backend-dev"
app_service_vnet_integration_subnet_id = "/subscriptions/7e974f66-0736-40f7-b233-8998b946ef43/resourceGroups/rg-ems-dev/providers/Microsoft.Network/virtualNetworks/vnet-ems-nonprod/subnets/snet-app-ems-backend-dev"
application_insights_enabled           = false
staging_slot_enabled                   = false
site_config = {
  ftps_state              = "AllAllowed"
  scm_minimum_tls_version = "1.0"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
}
extra_tag = {
     "Application Name": "Event Management System",
        "Application Owner": "Sana Zoud",
        "ENV": "DEV",
        "RITM": "RITM0081871",
        "X-IPAM-RES-ID": "angxLByPA6NqjRvhZVWp9H"
}

