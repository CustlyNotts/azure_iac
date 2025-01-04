subscription_id     = <subscription_id>
resource_group_name                    = "rg-cargoescanadastg"
location                               = "Canada Central"
os_type                                = "Windows"
sku_name                               = "P1v2"
service_plan_custom_name               = "ASP-cargoesreportstag"
app_service_custom_name                = "cargoes-report-stag"
app_service_vnet_integration_subnet_id = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-cargoesreportstag"
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
      "APPINSIGHTS_INSTRUMENTATIONKEY"             = "ff50bf1b-b63e-491f-aa45-9fd0e30483c3" 
      "APPLICATIONINSIGHTS_CONNECTION_STRING"      = "InstrumentationKey=ff50bf1b-b63e-491f-aa45-9fd0e30483c3;IngestionEndpoint=https://canadacentral-1.in.applicationinsights.azure.com/" 
      "ApplicationInsightsAgent_EXTENSION_VERSION" = "~2" 
      "XDT_MicrosoftApplicationInsights_Mode"      = "default" 
      "reportServerURL"                            = "http://10.41.2.58/reportserver"
      "reportServerAccessPass"                     = "dPworld2021!"
      "reportServerAccessUser"                     = "lynxssrs" 
      "reportServerFolderPrefix"                   = "/LynxReports/"
}


extra_tags = {
        "Application Name": "Mawani CNS",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}

