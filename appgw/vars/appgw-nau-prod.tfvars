subscription_id     = <subscription_id>
name                = "appgw-nau-prod"
resource_group_name = "rg-nau-infra-prod"
subnet_id           = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rg-nau-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-nau-prod/subnets/snet-appgw-nau-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "NAU",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "Prod"
}

public_ip_name     = "pip_nau-prod"
enable_http2 = true

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-nau-prod"
private_ip_address = "10.48.14.230"
private_ip_address_allocation = "Static"

autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}

backend_address_pools = [
  {
    name  = "bp_nau"
    ip_addresses = ["10.236.32.75"]
  },
  {
    name  = "bp_nauadmin"
    ip_addresses = ["10.236.32.75"]
  },
    {
    name  = "bp_naupwa"
    ip_addresses = ["10.236.32.75"]
  },
  {
    name  = "bp_nauapi"
    ip_addresses = ["10.236.32.75"]
  },
  {
    name  = "bp_nauofbiz"
    ip_addresses = ["10.236.64.4"]
  }

]

backend_http_settings = [
   {
    name                  = "bs_nau"
    cookie_based_affinity = "Disabled"
    host_name             = "nau.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nau"
  },
  {
    name                  = "bs_nauadmin"
    cookie_based_affinity = "Disabled"
    host_name             = "nauadmin.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nauadmin"
  },
  {
    name                  = "bs_naupwa"
    cookie_based_affinity = "Disabled"
    host_name             = "naupwa.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_naupwa"
  },
   {
    name                  = "bs_nauapi"
    cookie_based_affinity = "Disabled"
    host_name             = "nauapi.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 80
    probe_name            = "hp_nauapi"
  } ,
  {
    name                  = "bs_nauofbiz"
    cookie_based_affinity = "Disabled"
    host_name             = "ofbiz.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                  = 9093
    probe_name            = "hp_nauofbiz"
  } 

]

key_vault_subscription_id     = "ededa550-54e3-4ac7-a6b0-bca51f3c1495"
key_vault_resource_group_name = "Rgnauprod"
key_vault_name                = "kvnauprod"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-dpworld"
    key_vault_secret_id = "https://kvnauprod.vault.azure.net/secrets/Cloudflare-Fullcert-dpworld/e4df35f467f246cb98eef5e2a4412809"
  }
]

http_listeners = [
    {
    name        = "list_nau_http"
    host_name   = "nau.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nau_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nau.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
   {
    name        = "list_nauadmin_http"
    host_name   = "nauadmin.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nauadmin_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nauadmin.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_naupwa_http"
    host_name   = "naupwa.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_naupwa_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "naupwa.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_nauapi_http"
    host_name   = "nauapi.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nauapi_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "nauapi.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_nauofbiz_http"
    host_name   = "ofbiz.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_nauofbiz_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "ofbiz.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }

]

redirect_configuration = [
    {
    name                 = "http_to_https_nau"
    redirect_type        = "Permanent"
    target_listener_name = "list_nau_https"
  },
   {
    name                 = "http_to_https_nauadmin"
    redirect_type        = "Permanent"
    target_listener_name = "list_nauadmin_https"
  },
  {
    name                 = "http_to_https_naupwa"
    redirect_type        = "Permanent"
    target_listener_name = "list_naupwa_https"
  },
  {
    name                 = "http_to_https_nauapi"
    redirect_type        = "Permanent"
    target_listener_name = "list_nauapi_https"
  },
  {
    name                 = "http_to_https_nauofbiz"
    redirect_type        = "Permanent"
    target_listener_name = "list_nauofbiz_https"
  }

]

request_routing_rules = [
    {
    name                        = "rule_nau-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nau_http"
    redirect_configuration_name = "http_to_https_nau"
    priority                    = 10
  },
  {
    name                       = "rule_nau_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nau_https"
    backend_address_pool_name  = "bp_nau"
    backend_http_settings_name = "bs_nau"
    priority                   = 11
  },
  {
    name                        = "rule_nauadmin-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nauadmin_http"
    redirect_configuration_name = "http_to_https_nauadmin"
    priority                    = 12
  },
  {
    name                       = "rule_nauadmin_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nauadmin_https"
    backend_address_pool_name  = "bp_nauadmin"
    backend_http_settings_name = "bs_nauadmin"
    priority                   = 13
  },
  {
    name                        = "rule_naupwa-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_naupwa_http"
    redirect_configuration_name = "http_to_https_naupwa"
    priority                    = 14
  },
  {
    name                       = "rule_naupwa_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_naupwa_https"
    backend_address_pool_name  = "bp_naupwa"
    backend_http_settings_name = "bs_naupwa"
    priority                   = 15
  },
  {
    name                        = "rule_nauapi-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nauapi_http"
    redirect_configuration_name = "http_to_https_nauapi"
    priority                    = 16
  },
  {
    name                       = "rule_nauapi_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nauapi_https"
    backend_address_pool_name  = "bp_nauapi"
    backend_http_settings_name = "bs_nauapi"
    priority                   = 17
  },
  {
    name                        = "rule_nauofbiz-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_nauofbiz_http"
    redirect_configuration_name = "http_to_https_nauofbiz"
    priority                    = 18
  },
  {
    name                       = "rule_nauofbiz_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_nauofbiz_https"
    backend_address_pool_name  = "bp_nauofbiz"
    backend_http_settings_name = "bs_nauofbiz"
    priority                   = 19
  }

]

health_probes = [
    {
    name                = "hp_nau"
    host                = "nau.dpworld.com"
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
    name                = "hp_nauadmin"
    host                = "nauadmin.dpworld.com"
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
    name                = "hp_naupwa"
    host                = "naupwa.dpworld.com"
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
    name                = "hp_nauapi"
    host                = "nauapi.dpworld.com"
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
    name                = "hp_nauofbiz"
    host                = "ofbiz.dpworld.com"
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