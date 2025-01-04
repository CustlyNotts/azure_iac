subscription_id     = <subscription_id>
resource_group_name                    = "rg-ecommercedubuygtm-prod"
location                               = "uaenorth"
os_type                                = "Linux"
sku_name                               = "S1"
service_plan_custom_name               = "asp-dubuygtm-prod"
app_service_custom_name                = "dubuygtmprod"
#app_service_vnet_integration_subnet_id = [""]
application_insights_enabled           = false
staging_slot_enabled                   = false
https_only = true


site_config = {
          ftps_state                              = "FtpsOnly"
          health_check_path                       = "/healthz"
          scm_minimum_tls_version                 = "1.2"
          use_32_bit_worker                       = true
}


app_settings                                   = {
        "CONTAINER_CONFIG"                    = "aWQ9R1RNLTVNQlJHWEgmZW52PTEmYXV0aD1CNGQ3X2xIblU0NkpVOE9JWUpVTVJ3"
        "PREVIEW_SERVER_URL"                  = "https://dubuygtmprod-preview.azurewebsites.net"
        "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
}

sticky_settings = {
    app_setting_names       = [
            "RUN_AS_PREVIEW_SERVER",
        ] 
 }        