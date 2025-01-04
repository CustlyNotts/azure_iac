subscription_id     = <subscription_id>
resource_group_name                    = "rg-cargoescanada-preprod"
location                               = "Canada Central"
os_type                                = "Windows"
sku_name                               = "P1v2"
service_plan_custom_name               = "cargoes-preprodplan"
app_service_custom_name                = "cargoes-report-preprod"
app_service_vnet_integration_subnet_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-preprod/subnets/snet-cargoesreport"
application_insights_enabled           = false
staging_slot_enabled                   = false
client_affinity_enabled                = true 
site_config = {
  ftps_state              = "AllAllowed"
  scm_minimum_tls_version = "1.0"
  use_32_bit_worker       = true
  vnet_route_all_enabled  = false
  always_on                = false
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
          "reportServerURL"          = "http://10.41.2.158/reportserver"
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
          retention_in_days = 0
          retention_in_mb   = 35 
      }
  }
}
