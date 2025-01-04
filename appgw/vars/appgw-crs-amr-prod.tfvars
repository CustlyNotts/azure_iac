subscription_id     = <subscription_id>
name                = "appgw-crs-amr-prod"
resource_group_name = "rg-appgw-amr-prod"
subnet_id           = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-appgw-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-appgw-amr-prod/subnets/snet-appgw-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}

public_ip_name     = "pip-crs_amr-prod"
enable_http2 = false

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIp"
gateway_ip_configuration_name  = "appGatewayIpConfig"
private_ip_address = "10.12.1.6"
private_ip_address_allocation = "Static"
autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}

#firewall_policy_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/Rg-appgw-prod/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/ecomm-waf"
backend_address_pools = [
  {
    name         = "bp_rostering-am"
    ip_addresses = ["10.154.24.4", "10.154.24.5"]
  },
  {
    name         = "bp_rosteringapi-am"
    ip_addresses = ["10.154.24.4", "10.154.24.5"]
  },
  {
    name         = "bp_rosteringintegrationapi-am"
    ip_addresses = ["10.154.24.4", "10.154.24.5"]
  }
]
backend_http_settings = [
  {
    name                  = "bs_rostering-am"
    cookie_based_affinity = "Disabled"
    host_name             = "rostering-am.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rostering-am"
  },
  {
    name                  = "bs_rosteringapi-am"
    cookie_based_affinity = "Disabled"
    host_name             = "rosteringapi-am.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rosteringapi-am"
  },
  {
    name                  = "bs_rosteringintegrationapi-am"
    cookie_based_affinity = "Disabled"
    host_name             = "rosteringintegrationapi-am.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rosteringintegrationapi-am"
  }
]

key_vault_subscription_id     = "1f5e2bb0-70cd-430f-9fde-ecd3b07a0769"
key_vault_resource_group_name = "rg-appgw-amr-prod"
key_vault_name                = "kv-appgw-amr-prod"
ssl_certificates = [
  {
    name                = "cargoes"
    key_vault_secret_id = "https://kv-appgw-amr-prod.vault.azure.net/secrets/cargoes/15731040374441f7be2aee2bc3b9c34b"
  }
]

http_listeners = [
  {
    name      = "list_rostering-am_http"
    host_name = "rostering-am.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rostering-am_https"
    ssl_certificate_name = "cargoes"
    host_name            = "rostering-am.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name      = "list_rosteringapi-am_http"
    host_name = "rosteringapi-am.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rosteringapi-am_https"
    ssl_certificate_name = "cargoes"
    host_name            = "rosteringapi-am.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name      = "list_rosteringintegrationapi-am_http"
    host_name = "rosteringintegrationapi-am.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rosteringintegrationapi-am_https"
    ssl_certificate_name = "cargoes"
    host_name            = "rosteringintegrationapi-am.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]

redirect_configuration = [
  {
    name                 = "http_to_https_rostering-am"
    redirect_type        = "Permanent"
    target_listener_name = "list_rostering-am_https"
  },
  {
    name                 = "http_to_https_rosteringapi-am"
    redirect_type        = "Permanent"
    target_listener_name = "list_rosteringapi-am_https"
  },
  {
    name                 = "http_to_https_rosteringintegrationapi-am"
    redirect_type        = "Permanent"
    target_listener_name = "list_rosteringintegrationapi-am_https"
  }
]

request_routing_rules = [
  {
    name                        = "rule_rostering-am_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rostering-am_http"
    redirect_configuration_name = "http_to_https_rostering-am"
    priority                    = 20
  },
  {
    name                       = "rule_rostering-am_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rostering-am_https"
    backend_address_pool_name  = "bp_rostering-am"
    backend_http_settings_name = "bs_rostering-am"
    priority                   = 30
  },
  {
    name                        = "rule_rosteringapi-am_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rosteringapi-am_http"
    redirect_configuration_name = "http_to_https_rosteringapi-am"
    priority                    = 40
  },
  {
    name                       = "rule_rosteringapi-am_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rosteringapi-am_https"
    backend_address_pool_name  = "bp_rosteringapi-am"
    backend_http_settings_name = "bs_rosteringapi-am"
    priority                   = 50
  },
  {
    name                        = "rule_rosteringintegrationapi-am_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rosteringintegrationapi-am_http"
    redirect_configuration_name = "http_to_https_rosteringintegrationapi-am"
    priority                    = 60
  },
  {
    name                       = "rule_rosteringintegrationapi-am_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rosteringintegrationapi-am_https"
    backend_address_pool_name  = "bp_rosteringintegrationapi-am"
    backend_http_settings_name = "bs_rosteringintegrationapi-am"
    priority                   = 70
  }
]
health_probes = [
  {
    name                = "hp_rostering-am"
    host                = "rostering-am.cargoes.com"
    interval            = 30
    path                = "/"
    protocol            = "Http"
    port                = 80
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "hp_rosteringapi-am"
    host                = "rosteringapi-am.cargoes.com"
    interval            = 30
    path                = "/swagger/index.html"
    port                = 80
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "hp_rosteringintegrationapi-am"
    host                = "rosteringintegrationapi-am.cargoes.com"
    interval            = 30
    path                = "/swagger/index.html"
    port                = 80
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
  }
]

enable_private = true