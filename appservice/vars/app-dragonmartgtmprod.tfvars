subscription_id     = <subscription_id>
resource_group_name                    = "rg-ecommercedubuy-gtm-prod"
location                               = "uaenorth"
os_type                                = "Linux"
sku_name                               = "S1"
service_plan_custom_name               = "asp-dmgtm-prod"
app_service_custom_name                = "dragonmartgtmprod"
#app_service_vnet_integration_subnet_id = [""]
application_insights_enabled           = false
staging_slot_enabled                   = false
https_only = true

app_settings = {
          "CONTAINER_CONFIG"   = "aWQ9R1RNLUtMTkYzNEQmZW52PTEmYXV0aD1EQ0RLRVNYTm9HTDNtNW1pTkw4ZGJ3"
          "PREVIEW_SERVER_URL" = "https://dragonmartgtmprod-dragonmartgtmprod-preview.azurewebsites.net"
  }

site_config = {
          ftps_state                              = "FtpsOnly"
          health_check_path                       = "/healthz"
          scm_minimum_tls_version                 = "1.2"
          use_32_bit_worker                       = false
}

