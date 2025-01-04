subscription_id     = <subscription_id>
name                = "appgw-nau-nonprod"
resource_group_name = "rg-nau-infra-nonprod"
subnet_id           = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rg-nau-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-nau-nonprod/subnets/snet-appgw-nau-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "NAU",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "NonProd"
}
#firewall_policy_id = null
public_ip_name     = "pip_nau-nonprod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-nau-nonprod"
private_ip_address = "10.48.0.230"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_nautest"
    ip_addresses = ["10.236.12.117"]
  },
    {
    name  = "bp_nauuat"
    ip_addresses = ["10.236.12.117"]
  },
  {
    name  = "bp_nauapidev"
    ip_addresses = ["10.236.12.117"]
  },
    {
    name  = "bp_nauapiuat"
    ip_addresses = ["10.236.12.117"]
  },
  {
    name  = "bp_nauadminuat"
    ip_addresses = ["10.236.12.117"]
  },
    {
    name  = "bp_naumetabaseuat"
    ip_addresses = ["10.236.12.117"]
  },
      {
    name  = "bp_naupwauat"
    ip_addresses = ["10.236.12.117"]
  },
  {
    name  = "bp_ofbizuat"
    ip_addresses = ["10.236.20.4"]
  },
    {
    name  = "bp_ofbizapiuat"
    ip_addresses = ["10.236.20.4"]
  },
]
backend_http_settings = [
  {
    name                  = "bs_nautest"
    cookie_based_affinity = "Disabled"
    host_name             = "nautest.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nautest"
  },
    {
    name                  = "bs_nauuat"
    cookie_based_affinity = "Disabled"
    host_name             = "nauuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nauuat"
  },
      {
    name                  = "bs_nauapidev"
    cookie_based_affinity = "Disabled"
    host_name             = "nauapidev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nauapidev"
  },
  {
    name                  = "bs_nauapiuat"
    cookie_based_affinity = "Disabled"
    host_name             = "nauapiuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nauapiuat"
  },
    {
    name                  = "bs_nauadminuat"
    cookie_based_affinity = "Disabled"
    host_name             = "nauadminuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nauadminuat"
  },
      {
    name                  = "bs_naumetabaseuat"
    cookie_based_affinity = "Disabled"
    host_name             = "naumetabaseuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_naumetabaseuat"
  },
   {
    name                  = "bs_naupwauat"
    cookie_based_affinity = "Disabled"
    host_name             = "naupwauat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_naupwauat"
  },
     {
    name                  = "bs_ofbizuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ofbizuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ofbizuat"
  },
     {
    name                  = "bs_ofbizapiuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ofbizapiuat.dpworld.com"
    path                  = ""
    port                  = 9093
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_ofbizapiuat"
  }
]
key_vault_subscription_id     = "ededa550-54e3-4ac7-a6b0-bca51f3c1495"
key_vault_resource_group_name = "rg-nau-dev"
key_vault_name                = "kv-nau-dev-db-keys"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-dpworld"
    key_vault_secret_id = "https://kv-nau-dev-db-keys.vault.azure.net/secrets/Cloudflare-Fullcert-dpworld/2ffec2834a1d4a42b34eed3fcff3f2ba"
  }
]
http_listeners = [
  {
    name        = "list_nautest_http"
    host_name   = "nautest.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nautest_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nautest.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
    {
    name        = "list_nauuat_http"
    host_name   = "nauuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nauuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nauuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
      {
    name        = "list_nauapidev_http"
    host_name   = "nauapidev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nauapidev_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nauapidev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }, {
    name        = "list_nauapiuat_http"
    host_name   = "nauapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nauapiuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nauapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }, {
    name        = "list_nauadminuat_http"
    host_name   = "nauadminuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nauadminuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nauadminuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }, {
    name        = "list_naumetabaseuat_http"
    host_name   = "naumetabaseuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_naumetabaseuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "naumetabaseuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_naupwauat_http"
    host_name   = "naupwauat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_naupwauat_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "naupwauat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
   {
    name        = "list_ofbizuat_http"
    host_name   = "ofbizuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ofbizuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "ofbizuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
   {
    name        = "list_ofbizapiuat_http"
    host_name   = "ofbizapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ofbizapiuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "ofbizapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_nautest"
    redirect_type        = "Permanent"
    target_listener_name = "list_nautest_https"
  },
  {
    name                 = "http_to_https_nauuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_nauuat_https"
  },
    {
    name                 = "http_to_https_nauapidev"
    redirect_type        = "Permanent"
    target_listener_name = "list_nauapidev_https"
  },
      {
    name                 = "http_to_https_nauapiuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_nauapiuat_https"
  }
  ,
      {
    name                 = "http_to_https_nauadminuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_nauadminuat_https"
  }
  ,
      {
    name                 = "http_to_https_naumetabaseuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_naumetabaseuat_https"
  }
   ,
      {
    name                 = "http_to_https_naupwauat"
    redirect_type        = "Permanent"
    target_listener_name = "list_naupwauat_https"
  },
      {
    name                 = "http_to_https_ofbizuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_ofbizuat_https"
  },
      {
    name                 = "http_to_https_ofbizapiuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_ofbizapiuat_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_nautest-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nautest_http"
    redirect_configuration_name = "http_to_https_nautest"
    priority                    = 10
  },
  {
    name                       = "rule_nautest_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nautest_https"
    backend_address_pool_name  = "bp_nautest"
    backend_http_settings_name = "bs_nautest"
    priority                   = 11
  },
    {
    name                        = "rule_nauuat-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nauuat_http"
    redirect_configuration_name = "http_to_https_nauuat"
    priority                    = 12
  },
  {
    name                       = "rule_nauuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nauuat_https"
    backend_address_pool_name  = "bp_nauuat"
    backend_http_settings_name = "bs_nauuat"
    priority                   = 13
  },
      {
    name                        = "rule_nauapidev-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nauapidev_http"
    redirect_configuration_name = "http_to_https_nauapidev"
    priority                    = 14
  },
  {
    name                       = "rule_nauapidev_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nauapidev_https"
    backend_address_pool_name  = "bp_nauapidev"
    backend_http_settings_name = "bs_nauapidev"
    priority                   = 15
  },
        {
    name                        = "rule_nauapiuat-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nauapiuat_http"
    redirect_configuration_name = "http_to_https_nauapiuat"
    priority                    = 16
  },
  {
    name                       = "rule_nauapiuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nauapiuat_https"
    backend_address_pool_name  = "bp_nauapiuat"
    backend_http_settings_name = "bs_nauapiuat"
    priority                   = 17
  },

        {
    name                        = "rule_nauadminuat-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nauadminuat_http"
    redirect_configuration_name = "http_to_https_nauadminuat"
    priority                    = 18
  },
  {
    name                       = "rule_nauadminuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nauadminuat_https"
    backend_address_pool_name  = "bp_nauadminuat"
    backend_http_settings_name = "bs_nauadminuat"
    priority                   = 19
  },
        {
    name                        = "rule_naumetabaseuat-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_naumetabaseuat_http"
    redirect_configuration_name = "http_to_https_naumetabaseuat"
    priority                    = 20
  },
  {
    name                       = "rule_naumetabaseuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_naumetabaseuat_https"
    backend_address_pool_name  = "bp_naumetabaseuat"
    backend_http_settings_name = "bs_naumetabaseuat"
    priority                   = 21
  },
 {
    name                        = "rule_naupwauat-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_naupwauat_http"
    redirect_configuration_name = "http_to_https_naupwauat"
    priority                    = 22
  },
  {
    name                       = "rule_naupwauat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_naupwauat_https"
    backend_address_pool_name  = "bp_naupwauat"
    backend_http_settings_name = "bs_naupwauat"
    priority                   = 23
  },
  {
    name                        = "rule_ofbizuat-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ofbizuat_http"
    redirect_configuration_name = "http_to_https_ofbizuat"
    priority                    = 24
  },
  {
    name                       = "rule_ofbizuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ofbizuat_https"
    backend_address_pool_name  = "bp_ofbizuat"
    backend_http_settings_name = "bs_ofbizuat"
    priority                   = 25
  },
  {
    name                        = "rule_ofbizapiuat-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ofbizapiuat_http"
    redirect_configuration_name = "http_to_https_ofbizapiuat"
    priority                    = 26
  },
  {
    name                       = "rule_ofbizapiuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ofbizapiuat_https"
    backend_address_pool_name  = "bp_ofbizapiuat"
    backend_http_settings_name = "bs_ofbizapiuat"
    priority                   = 27
  }
]

health_probes = [
  {
    name                = "hp_nautest"
    host                = "nautest.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_nauuat"
    host                = "nauuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_nauapidev"
    host                = "nauapidev.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/admin"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_nauapiuat"
    host                = "nauapiuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/admin"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_nauadminuat"
    host                = "nauadminuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_naumetabaseuat"
    host                = "naumetabaseuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_naupwauat"
    host                = "naupwauat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }
   ,
    {
    name                = "hp_ofbizuat"
    host                = "ofbizuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/ordermgr/control/main"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_ofbizapiuat"
    host                = "ofbizapiuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/favicon.ico"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }
]
enable_private = true
