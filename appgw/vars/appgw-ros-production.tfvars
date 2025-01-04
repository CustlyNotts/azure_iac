subscription_id     = <subscription_id>
name                = "appgw-ros-production"
resource_group_name = "rg-ros-prod"
subnet_id           = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-ros/subnets/snet-appgw-ros"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "ros",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "Prod"
}
#firewall_policy_id = null
public_ip_name     = "pip-appgateway-production"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-ros-production"
private_ip_address = "10.48.14.201"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_rms"
    ip_addresses = ["10.171.0.34"]
  },
  {
    name  = "bp_rms-fois"
    ip_addresses = ["10.171.0.34"]
  },
  {
    name  = "bp_ims"
    ip_addresses = ["10.171.0.34"]
  },
  {
    name  = "bp_ims-os"
    ip_addresses = ["10.171.0.34"]
  },
  {
    name  = "bp_api-gateway"
    ip_addresses = ["10.171.0.34"]
  }
]
backend_http_settings = [
  {
    name                  = "bs_rms"
    cookie_based_affinity = "Disabled"
    host_name             = "rms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rms"
  },
  {
    name                  = "bs_rms-fois"
    cookie_based_affinity = "Disabled"
    host_name             = "rms-fois.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rms-fois"
  },
  {
    name                  = "bs_ims"
    cookie_based_affinity = "Disabled"
    host_name             = "ims.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ims"
  },
  {
    name                  = "bs_ims-os"
    cookie_based_affinity = "Disabled"
    host_name             = "ims-os.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ims-os"
  },
  {
    name                  = "bs_api-gateway"
    cookie_based_affinity = "Disabled"
    host_name             = "api-gateway.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_api-gateway"
  }
]
key_vault_subscription_id     = "3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4"
key_vault_resource_group_name = "rg-ros-prod"
key_vault_name                = "kv-ros-prd"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-dpworld1"
    key_vault_secret_id = "https://kv-ros-prd.vault.azure.net/secrets/Cloudflare-Fullcert-dpworld1/a334fb24eb084f91958aa2a2c574af16"
  }
]
http_listeners = [
  {
    name        = "list_rms_http"
    host_name   = "rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rms_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_rms-fois_http"
    host_name   = "rms-fois.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rms-fois_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "rms-fois.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ims_http"
    host_name   = "ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ims_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ims-os_http"
    host_name   = "ims-os.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ims-os_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "ims-os.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_api-gateway_http"
    host_name   = "api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_api-gateway_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_rms"
    redirect_type        = "Permanent"
    target_listener_name = "list_rms_https"
  },
  {
    name                 = "http_to_https_rms-fois"
    redirect_type        = "Permanent"
    target_listener_name = "list_rms-fois_https"
  },
  {
    name                 = "http_to_https_ims"
    redirect_type        = "Permanent"
    target_listener_name = "list_ims_https"
  },
  {
    name                 = "http_to_https_ims-os"
    redirect_type        = "Permanent"
    target_listener_name = "list_ims-os_https"
  },
  {
    name                 = "http_to_https_api-gateway"
    redirect_type        = "Permanent"
    target_listener_name = "list_api-gateway_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_rms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rms_http"
    redirect_configuration_name = "http_to_https_rms"
    priority                    = 10
  },
  {
    name                       = "rule_rms_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rms_https"
    backend_address_pool_name  = "bp_rms"
    backend_http_settings_name = "bs_rms"
    priority                   = 11
  },
  {
    name                        = "rule_rms-fois-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rms-fois_http"
    redirect_configuration_name = "http_to_https_rms-fois"
    priority                    = 12
  },
  {
    name                       = "rule_rms-fois_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rms-fois_https"
    backend_address_pool_name  = "bp_rms-fois"
    backend_http_settings_name = "bs_rms-fois"
    priority                   = 13
  },
  {
    name                        = "rule_ims-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ims_http"
    redirect_configuration_name = "http_to_https_ims"
    priority                    = 14
  },
  {
    name                       = "rule_ims_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ims_https"
    backend_address_pool_name  = "bp_ims"
    backend_http_settings_name = "bs_ims"
    priority                   = 15
  },
  {
    name                        = "rule_ims-os-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ims-os_http"
    redirect_configuration_name = "http_to_https_ims-os"
    priority                    = 16
  },
  {
    name                       = "rule_ims-os_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ims-os_https"
    backend_address_pool_name  = "bp_ims-os"
    backend_http_settings_name = "bs_ims-os"
    priority                   = 17
  },
  {
    name                        = "rule_api-gateway-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_api-gateway_http"
    redirect_configuration_name = "http_to_https_api-gateway"
    priority                    = 18
  },
  {
    name                       = "rule_api-gateway_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_api-gateway_https"
    backend_address_pool_name  = "bp_api-gateway"
    backend_http_settings_name = "bs_api-gateway"
    priority                   = 19
  }
]
health_probes = [
  {
    name                = "hp_rms"
    host                = "rms.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
  }
  },
  {
    name                = "hp_rms-fois"
    host                = "rms-fois.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
  }
  },
  {
    name                = "hp_ims"
    host                = "ims.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
  }
  },
  {
    name                = "hp_ims-os"
    host                = "ims-os.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_api-gateway"
    host                = "api-gateway.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/actuator/health"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  }
]
enable_private = true
