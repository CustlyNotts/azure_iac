subscription_id     = <subscription_id>
name                = "appgw-crs-eur-prod"
resource_group_name = "rg-appgw-eur-prod"
subnet_id           = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-appgw-eur-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-appgw-eur-prod/subnets/snet-appgw-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}

public_ip_name     = "pip-crs_eur-prod"
enable_http2 = false

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIp"
gateway_ip_configuration_name  = "appGatewayIpConfig"
private_ip_address = "10.96.4.5"
private_ip_address_allocation = "Static"
autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}

#firewall_policy_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/Rg-appgw-prod/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/ecomm-waf"
backend_address_pools = [
  {
    name         = "bp_rostering-eur"
    ip_addresses = ["10.154.0.4", "10.154.0.5"]
  },
  {
    name         = "bp_rosteringapi-eur"
    ip_addresses = ["10.154.0.4", "10.154.0.5"]
  },
  {
    name         = "bp_rosteringintegrationapi-eur"
    ip_addresses = ["10.154.0.4", "10.154.0.5"]
  }
]
backend_http_settings = [
  {
    name                  = "bs_rostering-eur"
    cookie_based_affinity = "Disabled"
    host_name             = "rostering-eu.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rostering-eur"
  },
  {
    name                  = "bs_rosteringapi-eur"
    cookie_based_affinity = "Disabled"
    host_name             = "rosteringapi-eu.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rosteringapi-eur"
  },
  {
    name                  = "bs_rosteringintegrationapi-eur"
    cookie_based_affinity = "Disabled"
    host_name             = "rosteringintegrationapi-eu.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_rosteringintegrationapi-eur"
  }
]

key_vault_subscription_id     = "1f5e2bb0-70cd-430f-9fde-ecd3b07a0769"
key_vault_resource_group_name = "rg-appgw-eur-prod"
key_vault_name                = "kv-appgw-eur-prod"
ssl_certificates = [
  {
    name                = "cloudflare"
    key_vault_secret_id = "https://kv-appgw-eur-prod.vault.azure.net/secrets/cloudflare/d77844e01d244170930e67900e8e8b58"
  }
]

http_listeners = [
  {
    name      = "list_rostering-eur_http"
    host_name = "rostering-eu.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rostering-eur_https"
    ssl_certificate_name = "cloudflare"
    host_name            = "rostering-eu.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name      = "list_rosteringapi-eur_http"
    host_name = "rosteringapi-eu.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rosteringapi-eur_https"
    ssl_certificate_name = "cloudflare"
    host_name            = "rosteringapi-eu.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name      = "list_rosteringintegrationapi-eur_http"
    host_name = "rosteringintegrationapi-eu.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_rosteringintegrationapi-eur_https"
    ssl_certificate_name = "cloudflare"
    host_name            = "rosteringintegrationapi-eu.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]

redirect_configuration = [
  {
    name                 = "http_to_https_rostering-eur"
    redirect_type        = "Permanent"
    target_listener_name = "list_rostering-eur_https"
  },
  {
    name                 = "http_to_https_rosteringapi-eur"
    redirect_type        = "Permanent"
    target_listener_name = "list_rosteringapi-eur_https"
  },
  {
    name                 = "http_to_https_rosteringintegrationapi-eur"
    redirect_type        = "Permanent"
    target_listener_name = "list_rosteringintegrationapi-eur_https"
  }
]

request_routing_rules = [
  {
    name                        = "rule_rostering-eur_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rostering-eur_http"
    redirect_configuration_name = "http_to_https_rostering-eur"
    priority                    = 20
  },
  {
    name                       = "rule_rostering-eur_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rostering-eur_https"
    backend_address_pool_name  = "bp_rostering-eur"
    backend_http_settings_name = "bs_rostering-eur"
    priority                   = 30
  },
  {
    name                        = "rule_rosteringapi-eur_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rosteringapi-eur_http"
    redirect_configuration_name = "http_to_https_rosteringapi-eur"
    priority                    = 40
  },
  {
    name                       = "rule_rosteringapi-eur_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rosteringapi-eur_https"
    backend_address_pool_name  = "bp_rosteringapi-eur"
    backend_http_settings_name = "bs_rosteringapi-eur"
    priority                   = 50
  },
  {
    name                        = "rule_rosteringintegrationapi-eur_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_rosteringintegrationapi-eur_http"
    redirect_configuration_name = "http_to_https_rosteringintegrationapi-eur"
    priority                    = 60
  },
  {
    name                       = "rule_rosteringintegrationapi-eur_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_rosteringintegrationapi-eur_https"
    backend_address_pool_name  = "bp_rosteringintegrationapi-eur"
    backend_http_settings_name = "bs_rosteringintegrationapi-eur"
    priority                   = 70
  }
]
health_probes = [
  {
    name                = "hp_rostering-eur"
    host                = "rostering-eu.cargoes.com"
    interval            = 30
    path                = "/"
    protocol            = "Http"
    port                = 80
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "hp_rosteringapi-eur"
    host                = "rosteringapi-eu.cargoes.com"
    interval            = 30
    path                = "/swagger/index.html"
    port                = 80
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "hp_rosteringintegrationapi-eur"
    host                = "rosteringintegrationapi-eu.cargoes.com"
    interval            = 30
    path                = "/swagger/index.html"
    port                = 80
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
  }
]

enable_private = true