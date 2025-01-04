subscription_id     = <subscription_id>
name                = "agw-cns-dr"
resource_group_name = "rg-cnsdr"
subnet_id           = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsdrhub/subnets/snet-cnsdrappgw"
sku = {
  name     = "WAF_v2"
  tier     = "WAF_v2"
  capacity = 0
}
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "DR"
}
firewall_policy_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnspreprod-dr/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/cns-waf-policy"
public_ip_name     = "pip-apw-cnsdr"


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIp"
gateway_ip_configuration_name  = "appGatewayIpConfig"


autoscale_configuration = {
  max_capacity = 10
  min_capacity = 0
}

backend_address_pools = [
  {
    name         = "bp-cns-drpool"
    ip_addresses = ["172.21.21.10"]
  }
]
backend_http_settings = [
  {
    name                  = "backend-cns-dr80"
    affinity_cookie_name  = "ApplicationGatewayAffinity"
    cookie_based_affinity = "Enabled"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "eu-community.cargoes.com"
  }
]
http_listeners = [
  {
    name        = "eu-community.cargoes.com80"
    host_name   = "eu-community.cargoes.com"
    require_sni = false
  },
  {
    name                 = "eu-community.cargoes.com443"
    ssl_certificate_name = "star.cargoes.com"
    host_name            = "eu-community.cargoes.com"
    require_sni          = true
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "star.cargoes.com"
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/Cargoes-Domain/1b91beeaa09947e088a776436e62ee03"
    password            = ""
  }
]
request_routing_rules = [
  {
    name                        = "eu-community.cargoes.com80"
    rule_type                   = "Basic"
    http_listener_name          = "eu-community.cargoes.com80"
    redirect_configuration_name = "eu-community.cargoes.com80"
    priority                    = 30
  },

  {
    name                       = "eu-community.cargoes.com443"
    rule_type                  = "Basic"
    http_listener_name         = "eu-community.cargoes.com443"
    backend_address_pool_name  = "bp-cns-drpool"
    backend_http_settings_name = "backend-cns-dr80"
    priority                   = 20
  }
]
redirect_configuration = [
  {
    name                 = "eu-community.cargoes.com80"
    redirect_type        = "Permanent"
    target_listener_name = "eu-community.cargoes.com443"
  }
]
url_path_maps = []

health_probes = [
  {
    name                = "eu-community.cargoes.com"
    host                = "eu-community.cargoes.com"
    interval            = 30
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  }
]
