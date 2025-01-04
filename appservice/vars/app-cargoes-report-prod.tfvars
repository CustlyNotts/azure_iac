subscription_id     = <subscription_id>
resource_group_name                    = "rg-cargoescanada-prod"
location                               = "Canada Central"
os_type                                = "Windows"
sku_name                               = "P1v2"
service_plan_custom_name               = "ASP-cargoes-report-prod"
app_service_custom_name                = "cargoes-report-prod"
app_service_vnet_integration_subnet_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoesreportprod"
application_insights_enabled           = false
staging_slot_enabled                   = false
client_affinity_enabled                = true 
site_config = {
  ftps_state              = "AllAllowed"
  scm_minimum_tls_version = "1.0"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
  always_on                = true
  virtual_application = {
      physical_path = "site\\wwwroot"
      preload       = false
      virtual_path  = "/"
    }
  virtual_application = {
      physical_path = "site\\wwwroot\\reportproxy"
      preload       = false
      virtual_path  = "/reportproxy"
    }
}

#site_config = {
#  virtual_application = {
#      physical_path = "site\\wwwroot\\reportproxy"
#      preload       = false
#      virtual_path  = "/reportproxy"
#    }
#}

app_settings = {
     "reportServerAccessDomain" = "DPWVANSSRS"
     "reportServerAccessPass"   = "Welcome99?"
     "reportServerAccessUser"   = "CCSSSRS" 
     "reportServerURL"          = "http://privatessrs.dpworld.ca/reportserver"
}

extra_tags = {
        "Application Name": "Mawani CNS",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}

