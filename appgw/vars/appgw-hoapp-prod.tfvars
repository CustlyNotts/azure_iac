subscription_id     = <subscription_id>
name                = "appgw-hoapp-prod"
resource_group_name = "rg-appgw-prod"
subnet_id           = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-appgw-prod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-prod/subnets/snet-appgw-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags = {
  "env" : "PROD",
  "Application Name" : "Application Gateway",
  "Application Owner" : "Mohamed Nowphal"
}
#firewall_policy_id = null
public_ip_name     = "pip_appgw-hoapp_prod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-hoapp-prod"
private_ip_address = "10.48.8.5"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 5
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_ghse"
    ip_addresses = ["10.253.0.14"]
  },
  {
    name  = "bp_ghsereports"
    ip_addresses = ["10.253.0.30"]
  },
  {
    name  = "bp_aprl"
    ip_addresses = ["10.253.0.7"]
  },
  {
    name  = "bp_dms"
    ip_addresses = ["10.253.0.6"]
  },
  {
    name  = "bp_everythingclicks"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_education"
    ip_addresses = ["10.2.204.132"]
  },
  {
    name  = "bp_groupsecapps"
    ip_addresses = ["10.253.0.7"]
  },
  {
    name  = "bp_apps"
    ip_addresses = ["10.239.0.92"]
  },
  {
    name  = "bp_ghseapi"
    ip_addresses = ["10.253.0.14"]
  },
  {
    name  = "bp_gsecappapi"
    ip_addresses = ["10.253.0.7"]
  },
  {
    name  = "bp_argus"
    ip_addresses = ["10.239.0.92"]
  },
  {
    name  = "bp_hcmyworldsurvey"
    ip_addresses = ["10.253.0.7"]
  },
  {
    name  = "bp_mentorher"
    ip_addresses = ["10.253.0.27"]
  },
  {
    name  = "bp_fpawards"
    ip_addresses = ["10.253.0.27"]
  },
  {
    name  = "bp_edris"
    ip_addresses = ["10.253.0.27"]
  },
  {
    name  = "bp_ispec"
    ip_addresses = ["10.253.0.20"]
  },
  {
    name  = "bp_allewan"
    ip_addresses = ["10.253.0.53"]
  },
  {
    name  = "bp_afemobileservices"
    ip_addresses = ["10.253.0.27"]
  },
  {
    name  = "bp_groupsecappsapi"
    ip_addresses = ["10.253.0.7"]
  },
  {
    name  = "bp_ghsereports"
    ip_addresses = ["10.253.0.30"]
  },
  {
    name  = "bp_hcglobalsurvey"
    ip_addresses = ["10.253.4.10"]
  }
]
backend_http_settings = [
  {
    name                  = "bs_ghse"
    cookie_based_affinity = "Disabled"
    host_name             = "grouphseapps.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_ghse"
  },
  {
    name                  = "bs_ghsereports"
    cookie_based_affinity = "Disabled"
    host_name             = "ghsereports.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    #probe_name            = ""
  },
  {
    name                  = "bs_aprl"
    cookie_based_affinity = "Disabled"
    host_name             = "aprl.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_aprl"
  },
  {
    name                  = "bs_dms"
    cookie_based_affinity = "Disabled"
    host_name             = "dms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    #probe_name            = ""
  },
  {
    name                  = "bs_mentorher"
    cookie_based_affinity = "Disabled"
    host_name             = "mentorher.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_mentorher"
  },
  {
    name                  = "bs_fpawards"
    cookie_based_affinity = "Disabled"
    host_name             = "foundersprinciplesawards.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_fpawards"
  },
  {
    name                  = "bs_edris"
    cookie_based_affinity = "Disabled"
    host_name             = "edris.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_edris"
  },
  {
    name                  = "bs_ispec"
    cookie_based_affinity = "Disabled"
    host_name             = "ispec.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_ispec"
  },
  {
    name                  = "bs_everythingclicks"
    cookie_based_affinity = "Disabled"
    host_name             = "everythingclicks.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    #probe_name            = ""
  },
  {
    name                  = "bs_allewan"
    cookie_based_affinity = "Disabled"
    host_name             = "allewan.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_allewan"
  },
  {
    name                  = "bs_education"
    cookie_based_affinity = "Disabled"
    host_name             = "education.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    #probe_name            = ""
  },
  {
    name                  = "bs_groupsecapps"
    cookie_based_affinity = "Disabled"
    host_name             = "groupsecapps.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_groupsecapps"
  },
  {
    name                  = "bs_apps"
    cookie_based_affinity = "Disabled"
    host_name             = "apps.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    #probe_name            = ""
  },
  {
    name                  = "bs_ghseapi"
    cookie_based_affinity = "Disabled"
    host_name             = "grouphseappsapi.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_ghseapi"
  },
  {
    name                  = "bs_groupsecappsapi"
    cookie_based_affinity = "Disabled"
    host_name             = "groupsecappsapi.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_groupsecappsapi"
  },
  {
    name                  = "bs_afemobileservices"
    cookie_based_affinity = "Disabled"
    host_name             = "afemobileservices.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_afemobileservices"
  },
  {
    name                  = "bs_argus"
    cookie_based_affinity = "Disabled"
    host_name             = "argus.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_argus"
  },
  {
    name                  = "bs_ghsereports"
    cookie_based_affinity = "Disabled"
    host_name             = "ghsereports.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    #probe_name            = "hp_ghsereports"
  },
  {
    name                  = "bs_hcglobalsurvey"
    cookie_based_affinity = "Disabled"
    host_name             = "hcglobalsurvey.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_hcglobalsurvey"
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert"
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/Cloudflare-Fullcert/e344bbc3222b443ab86f463249a23f4d"
  }
]
http_listeners = [
  {
    name        = "list_ghse_http"
    host_name   = "grouphseapps.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghse_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "grouphseapps.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghsereports_http"
    host_name   = "ghsereports.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghsereports_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghsereports.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_argus_http"
    host_name   = "argus.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_argus_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "argus.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_aprl_http"
    host_name   = "aprl.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_aprl_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "aprl.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_dms_http"
    host_name   = "dms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_dms_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "dms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_mentorher_http"
    host_name   = "mentorher.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_mentorher_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "mentorher.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_fpawards_http"
    host_name   = "foundersprinciplesawards.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_fpawards_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "foundersprinciplesawards.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_edris_http"
    host_name   = "edris.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_edris_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "edris.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ispec_http"
    host_name   = "ispec.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ispec_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ispec.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_everythingclicks_http"
    host_name   = "everythingclicks.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_everythingclicks_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "everythingclicks.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_allewan_http"
    host_name   = "allewan.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_allewan_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "allewan.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_education_http"
    host_name   = "education.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_education_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "education.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_groupsecapps_http"
    host_name   = "groupsecapps.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_groupsecapps_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "groupsecapps.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_apps_http"
    host_name   = "apps.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_apps_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "apps.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghseapi_http"
    host_name   = "grouphseappsapi.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghseapi_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "grouphseappsapi.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },

{
    name        = "list_groupsecappsapi_http"
    host_name   = "groupsecappsapi.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_groupsecappsapi_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "groupsecappsapi.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_afemobileservices_http"
    host_name   = "afemobileservices.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_afemobileservices_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "afemobileservices.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghsereports_http"
    host_name   = "ghsereports.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghsereports_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghsereports.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_hcglobalsurvey_http"
    host_name   = "hcglobalsurvey.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_hcglobalsurvey_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "hcglobalsurvey.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_ghse"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghse_https"
  },
  {
    name                 = "http_to_https_ghsereports"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghsereports_https"
  },
  {
    name                 = "http_to_https_argus"
    redirect_type        = "Permanent"
    target_listener_name = "list_argus_https"
  },
  {
    name                 = "http_to_https_aprl"
    redirect_type        = "Permanent"
    target_listener_name = "list_aprl_https"
  },
  {
    name                 = "http_to_https_dms"
    redirect_type        = "Permanent"
    target_listener_name = "list_dms_https"
  },
  {
    name                 = "http_to_https_mentorher"
    redirect_type        = "Permanent"
    target_listener_name = "list_mentorher_https"
  },
  {
    name                 = "http_to_https_fpawards"
    redirect_type        = "Permanent"
    target_listener_name = "list_fpawards_https"
  },
  {
    name                 = "http_to_https_edris"
    redirect_type        = "Permanent"
    target_listener_name = "list_edris_https"
  },
  {
    name                 = "http_to_https_ispec"
    redirect_type        = "Permanent"
    target_listener_name = "list_ispec_https"
  },
  {
    name                 = "http_to_https_everythingclicks"
    redirect_type        = "Permanent"
    target_listener_name = "list_everythingclicks_https"
  },
  {
    name                 = "http_to_https_allewan"
    redirect_type        = "Permanent"
    target_listener_name = "list_allewan_https"
  },
  {
    name                 = "http_to_https_education"
    redirect_type        = "Permanent"
    target_listener_name = "list_education_https"
  },
  {
    name                 = "http_to_https_groupsecapps"
    redirect_type        = "Permanent"
    target_listener_name = "list_groupsecapps_https"
  },
  {
    name                 = "http_to_https_apps"
    redirect_type        = "Permanent"
    target_listener_name = "list_apps_https"
  },
  {
    name                 = "http_to_https_ghseapi"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghseapi_https"
  },
  {
    name                 = "http_to_https_groupsecappsapi"
    redirect_type        = "Permanent"
    target_listener_name = "list_groupsecappsapi_https"
  },
  {
    name                 = "http_to_https_afemobileservices"
    redirect_type        = "Permanent"
    target_listener_name = "list_afemobileservices_https"
  },
  {
    name                 = "http_to_https_hcglobalsurvey"
    redirect_type        = "Permanent"
    target_listener_name = "list_hcglobalsurvey_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_ghse-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghse_http"
    redirect_configuration_name = "http_to_https_ghse"
    priority                    = 10
  },
  {
    name                       = "rule_ghse_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghse_https"
    backend_address_pool_name  = "bp_ghse"
    backend_http_settings_name = "bs_ghse"
    priority                   = 11
  },
  {
    name                        = "rule_ghsereports_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghsereports_http"
    redirect_configuration_name = "http_to_https_ghsereports"
    priority                    = 12
  },
  {
    name                       = "rule_ghsereports_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghsereports_https"
    backend_address_pool_name  = "bp_ghsereports"
    backend_http_settings_name = "bs_ghsereports"
    priority                   = 13
  },
  {
    name                        = "rule_argus_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_argus_http"
    redirect_configuration_name = "http_to_https_argus"
    priority                    = 14
  },
  {
    name                       = "rule_argus_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_argus_https"
    backend_address_pool_name  = "bp_argus"
    backend_http_settings_name = "bs_argus"
    priority                   = 15
  },
  {
    name                        = "rule_aprl_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_aprl_http"
    redirect_configuration_name = "http_to_https_aprl"
    priority                    = 16
  },
  {
    name                       = "rule_aprl_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_aprl_https"
    backend_address_pool_name  = "bp_aprl"
    backend_http_settings_name = "bs_aprl"
    priority                   = 17
  },
  {
    name                        = "rule_dms_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dms_http"
    redirect_configuration_name = "http_to_https_dms"
    priority                    = 18
  },
  {
    name                       = "rule_dms_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dms_https"
    backend_address_pool_name  = "bp_dms"
    backend_http_settings_name = "bs_dms"
    priority                   = 19
  },
  {
    name                        = "rule_mentorher_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_mentorher_http"
    redirect_configuration_name = "http_to_https_mentorher"
    priority                    = 20
  },
  {
    name                       = "rule_mentorher_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_mentorher_https"
    backend_address_pool_name  = "bp_mentorher"
    backend_http_settings_name = "bs_mentorher"
    priority                   = 21
  },
  {
    name                        = "rule_fpawards_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_fpawards_http"
    redirect_configuration_name = "http_to_https_fpawards"
    priority                    = 22
  },
  {
    name                       = "rule_fpawards_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_fpawards_https"
    backend_address_pool_name  = "bp_fpawards"
    backend_http_settings_name = "bs_fpawards"
    priority                   = 23
  },
  {
    name                        = "rule_edris_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_edris_http"
    redirect_configuration_name = "http_to_https_edris"
    priority                    = 24
  },
  {
    name                       = "rule_edris_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_edris_https"
    backend_address_pool_name  = "bp_edris"
    backend_http_settings_name = "bs_edris"
    priority                   = 25
  },
  {
    name                        = "rule_ispec_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ispec_http"
    redirect_configuration_name = "http_to_https_ispec"
    priority                    = 26
  },
  {
    name                       = "rule_ispec_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ispec_https"
    backend_address_pool_name  = "bp_ispec"
    backend_http_settings_name = "bs_ispec"
    priority                   = 27
  },
  {
    name                        = "rule_everythingclicks_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_everythingclicks_http"
    redirect_configuration_name = "http_to_https_everythingclicks"
    priority                    = 28
  },
  {
    name                       = "rule_everythingclicks_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_everythingclicks_https"
    backend_address_pool_name  = "bp_everythingclicks"
    backend_http_settings_name = "bs_everythingclicks"
    priority                   = 29
  },
  {
    name                        = "rule_allewan_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_allewan_http"
    redirect_configuration_name = "http_to_https_allewan"
    priority                    = 30
  },
  {
    name                       = "rule_allewan_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_allewan_https"
    backend_address_pool_name  = "bp_allewan"
    backend_http_settings_name = "bs_allewan"
    priority                   = 31
  },
  {
    name                        = "rule_education_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_education_http"
    redirect_configuration_name = "http_to_https_education"
    priority                    = 32
  },
  {
    name                       = "rule_education_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_education_https"
    backend_address_pool_name  = "bp_education"
    backend_http_settings_name = "bs_education"
    priority                   = 33
  },
  {
    name                        = "rule_groupsecapps_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_groupsecapps_http"
    redirect_configuration_name = "http_to_https_groupsecapps"
    priority                    = 34
  },
  {
    name                       = "rule_groupsecapps_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_groupsecapps_https"
    backend_address_pool_name  = "bp_groupsecapps"
    backend_http_settings_name = "bs_groupsecapps"
    priority                   = 35
  },
  {
    name                        = "rule_apps_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_apps_http"
    redirect_configuration_name = "http_to_https_apps"
    priority                    = 36
  },
  {
    name                       = "rule_apps_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_apps_https"
    backend_address_pool_name  = "bp_apps"
    backend_http_settings_name = "bs_apps"
    priority                   = 37
  },
  {
    name                        = "rule_ghseapi_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghseapi_http"
    redirect_configuration_name = "http_to_https_ghseapi"
    priority                    = 38
  },
  {
    name                       = "rule_ghseapi_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghseapi_https"
    backend_address_pool_name  = "bp_ghseapi"
    backend_http_settings_name = "bs_ghseapi"
    priority                   = 39
  },
  {
    name                        = "rule_groupsecappsapi_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_groupsecappsapi_http"
    redirect_configuration_name = "http_to_https_groupsecappsapi"
    priority                    = 40
  },
  {
    name                       = "rule_groupsecappsapi_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_groupsecappsapi_https"
    backend_address_pool_name  = "bp_groupsecappsapi"
    backend_http_settings_name = "bs_groupsecappsapi"
    priority                   = 41
  },
  {
    name                        = "rule_afemobileservices_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_afemobileservices_http"
    redirect_configuration_name = "http_to_https_afemobileservices"
    priority                    = 42
  },
  {
    name                       = "rule_afemobileservices_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_afemobileservices_https"
    backend_address_pool_name  = "bp_afemobileservices"
    backend_http_settings_name = "bs_afemobileservices"
    priority                   = 43
  },
  {
    name                        = "rule_hcglobalsurvey_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_hcglobalsurvey_http"
    redirect_configuration_name = "http_to_https_afemobileservices"
    priority                    = 44
  },
  {
    name                       = "rule_hcglobalsurvey_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_hcglobalsurvey_https"
    backend_address_pool_name  = "bp_hcglobalsurvey"
    backend_http_settings_name = "bs_hcglobalsurvey"
    priority                   = 45
  }
]

health_probes = [
  {
    name                = "hp_argus"
    host                = "argus.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/public"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_mentorher"
    host                = "mentorher.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/a.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_fpawards"
    host                = "foundersprinciplesawards.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/a.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_edris"
    host                = "edris.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/a.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ispec"
    host                = "ispec.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/scripts/_references.js"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_allewan"
    host                = "allewan.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/api/serverhealthcheck"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_afemobileservices"
    host                = "afemobileservices.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/a.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_argus"
    host                = "argus.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/public"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghseapi"
    host                = "grouphseappsapi.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/ping/get"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_groupsecappsapi"
    host                = "groupsecappsapi.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/ping/get"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghse"
    host                = "grouphseapps.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/silent-refresh.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_aprl"
    host                = "aprl.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/images/APRL/Logo.png"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_groupsecapps"
    host                = "groupsecapps.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/silent-refresh.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_hcglobalsurvey"
    host                = "hcglobalsurvey.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/scripts/respond.min.js"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }
]
enable_private = true
