subscription_id     = <subscription_id>
resource_group_name                    = "rg-cargoscanada-test"
location                               = "Canada Central"
os_type                                = "Windows"
sku_name                               = "P1v2"
service_plan_custom_name               = "ASP-rgcargoscanadatest-bd8b"
app_service_custom_name                = "cargoes-reports-test"
app_service_vnet_integration_subnet_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-cargoereport"
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
          "reportServerAccessPass"   = "dPworld2021!"
         "reportServerAccessUser"   = "lynxssrs"
          "reportServerFolderPrefix" = "/LynxReports/"
          "reportServerURL"          = "http://10.41.2.178/reportserver"
  }
extra_tags = {
        "Application Name": "Mawani CNS",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}

app_service_logs = {
      detailed_error_messages = true
      failed_request_tracing  = true
      http_logs = {
        file_system = {
          retention_in_days = 10
          retention_in_mb   = 35 
      }
  }
}
