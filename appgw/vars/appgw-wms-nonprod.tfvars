subscription_id     = <subscription_id>
name                = "appgw-wms-nonprod"
resource_group_name = "rg-wms-infra-nonprod"
subnet_id           = "/subscriptions/02b7a2b2-a969-4817-ad92-6f26a5c7afd0/resourceGroups/rg-wms-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-wms-nonprod/subnets/snet-appgw-wms-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}

tags = {
  "Application Name"  = "Warehouse Management System",
  "Application Owner" = "Sandeep Gupta",
  "RITM"              = "RITM0097856"
  "ENV"               = "NonProd"
}
#firewall_policy_id = null
public_ip_name     = "pip_wms-nonprod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-wms-nonprod"
private_ip_address = "10.48.11.167"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_wmsdevfrontend"
    ip_addresses = ["10.48.136.65"]
  },
    {
    name  = "bp_wmsdevbackend"
    ip_addresses = ["10.48.136.65"]
  },
    {
    name  = "bp_wmsqabackend"
    ip_addresses = ["10.48.136.65"]
  },
      {
    name  = "bp_wmsstagingbackend"
    ip_addresses = ["10.48.136.65"]
  },
  {
    name  = "bp_wmsqafrontend"
    ip_addresses = ["10.48.136.65"]
  },
]
backend_http_settings = [
  {
    name                  = "bs_wmsdevfrontend"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-wms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_wmsdevfrontend"
  },
    {
    name                  = "bs_wmsdevbackend"
    cookie_based_affinity = "Disabled"
    host_name             = "wmsdev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_wmsdevbackend"
  },
  {
    name                  = "bs_wmsqabackend"
    cookie_based_affinity = "Disabled"
    host_name             = "wmsqa.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_wmsqabackend"
  },
  {
    name                  = "bs_wmsstagingbackend"
    cookie_based_affinity = "Disabled"
    host_name             = "wmsstaging.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_wmsstagingbackend"
  },  {
    name                  = "bs_wmsqafrontend"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-wms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_wmsqafrontend"
  }
]
key_vault_subscription_id     = "02b7a2b2-a969-4817-ad92-6f26a5c7afd0"
key_vault_resource_group_name = "rg-wms-nonprod"
key_vault_name                = "kv-wms-nonprod"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-dpworld"
    key_vault_secret_id = "https://kv-wms-nonprod.vault.azure.net/secrets/Cloudflare-Fullcert-dpworld/cbae2622f1014f189dfbe01e1e2a4f90"
  }
]
http_listeners = [
  {
    name        = "list_wmsdevfrontend_http"
    host_name   = "dev-wms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_wmsdevfrontend_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "dev-wms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
    {
    name        = "list_wmsdevbackend_http"
    host_name   = "wmsdev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_wmsdevbackend_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "wmsdev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },   
   {
    name        = "list_wmsqabackend_http"
    host_name   = "wmsqa.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_wmsqabackend_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "wmsqa.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },   
   {
    name        = "list_wmsstagingbackend_http"
    host_name   = "wmsstaging.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_wmsstagingbackend_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "wmsstaging.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },{
    name        = "list_wmsqafrontend_http"
    host_name   = "qa-wms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
    {
    name                 = "list_wmsqafrontend_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "qa-wms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
]

redirect_configuration = [
  {
    name                 = "http_to_https_wmsdevfrontend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsdevfrontend_https"
  },
  {
    name                 = "http_to_https_wmsdevfrontend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsdevfrontend_https"
  },
    {
    name                 = "http_to_https_wmsdevbackend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsdevbackend_https"
  },
  {
    name                 = "http_to_https_wmsdevbackend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsdevbackend_https"
  },
  {
    name                 = "http_to_https_wmsqabackend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsqabackend_https"
  },
  {
    name                 = "http_to_https_wmsqabackend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsqabackend_https"
  },
    {
    name                 = "http_to_https_wmsstagingbackend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsstagingbackend_https"
  },
  {
    name                 = "http_to_https_wmsstagingbackend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsstagingbackend_https"
  },
   {
    name                 = "http_to_https_wmsqafrontend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsqafrontend_https"
  },
  {
    name                 = "http_to_https_wmsqafrontend"
    redirect_type        = "Permanent"
    target_listener_name = "list_wmsqafrontend_https"
  }

] 
request_routing_rules = [
  {
    name                        = "rule_wmsdevfrontend-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_wmsdevfrontend_http"
    redirect_configuration_name = "http_to_https_wmsdevfrontend"
    priority                    = 10
  },
  {
    name                       = "rule_wmsdevfrontend_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_wmsdevfrontend_https"
    backend_address_pool_name  = "bp_wmsdevfrontend"
    backend_http_settings_name = "bs_wmsdevfrontend"
    priority                   = 11
  },
    {
    name                        = "rule_wmsdevbackend-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_wmsdevbackend_http"
    redirect_configuration_name = "http_to_https_wmsdevbackend"
    priority                    = 12
  },
  {
    name                       = "rule_wmsdevbackend_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_wmsdevbackend_https"
    backend_address_pool_name  = "bp_wmsdevbackend"
    backend_http_settings_name = "bs_wmsdevbackend"
    priority                   = 13
  },
  {
    name                        = "rule_wmsqabackend-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_wmsqabackend_http"
    redirect_configuration_name = "http_to_https_wmsqabackend"
    priority                    = 14
  },
  {
    name                       = "rule_wmsqabackend_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_wmsqabackend_https"
    backend_address_pool_name  = "bp_wmsqabackend"
    backend_http_settings_name = "bs_wmsqabackend"
    priority                   = 15
  }, {
    name                        = "rule_wmsstagingbackend-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_wmsstagingbackend_http"
    redirect_configuration_name = "http_to_https_wmsstagingbackend"
    priority                    = 16
  },
  {
    name                       = "rule_wmsstagingbackend_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_wmsstagingbackend_https"
    backend_address_pool_name  = "bp_wmsstagingbackend"
    backend_http_settings_name = "bs_wmsstagingbackend"
    priority                   = 17
  },
  {
    name                        = "rule_wmsqafrontend-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_wmsqafrontend_http"
    redirect_configuration_name = "http_to_https_wmsqafrontend"
    priority                    = 18
  },
  {
    name                       = "rule_wmsqafrontend_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_wmsqafrontend_https"
    backend_address_pool_name  = "bp_wmsqafrontend"
    backend_http_settings_name = "bs_wmsqafrontend"
    priority                   = 19
  }
]

health_probes = [
  {
    name                = "hp_wmsdevfrontend"
    host                = "dev-wms.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 15
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_wmsdevbackend"
    host                = "wmsdev.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/inbound/health"
    timeout             = 15
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_wmsqabackend"
    host                = "wmsqa.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/inbound/health"
    timeout             = 15
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_wmsstagingbackend"
    host                = "wmsstaging.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/inbound/health"
    timeout             = 15
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
    {
    name                = "hp_wmsqafrontend"
    host                = "qa-wms.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 15
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }
]
enable_private = true
