subscription_id     = <subscription_id>
name                = "agw-bt-dr"
resource_group_name = "rg-btinfra-dr"
subnet_id           = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btinfra-dr/providers/Microsoft.Network/virtualNetworks/vnet-bt-dr/subnets/snet-appgateway"
sku = {
  name     = "WAF_v2"
  tier     = "WAF_v2"
  capacity = 0
}
tags = {
  "Application Name" : "CCS-BT",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "DR"
}
firewall_policy_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btinfra-dr/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/wafpolicy-bt-dr"
public_ip_name     = "PIP_bt-uat-dr"

enable_http2 = true

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "appGatewayIpConfig"


autoscale_configuration = {
  max_capacity = 10
  min_capacity = 0
}

backend_address_pools = [
  {
    name         = "bp-btuat-dr"
    ip_addresses = ["172.17.10.6"]
  }
]
backend_http_settings = [
  {
    name                  = "http-btuat-dr"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-btuat-dr"
  }
]
http_listeners = [
  {
    name        = "lstn-btuat-dr-80"
    host_name   = "inuat-community.cargoes.com"
    require_sni = false
  },
  {
    name                 = "lstn-btuat-dr"
    ssl_certificate_name = "star.cargoes.com"
    host_name            = "inuat-community.cargoes.com"
    require_sni          = true
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "star.cargoes.com",
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/Cargoes-Domain/1b91beeaa09947e088a776436e62ee03"
    password            = ""
  },
{
  name             = "start.dpworld.com" 
  password            = ""
  key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/Cargoes-Domain/1b91beeaa09947e088a776436e62ee03"
  id               = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btinfra-dr/providers/Microsoft.Network/applicationGateways/agw-bt-dr/sslCertificates/start.dpworld.com"
}
]
request_routing_rules = [
  {
    name                        = "btuat-dr-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btuat-dr-80"
    redirect_configuration_name = "btuat-dr-80"
    priority                    = 20
  },

  {
    name                       = "bt-uatdr-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btuat-dr"
    backend_address_pool_name  = "bp-btuat-dr"
    backend_http_settings_name = "http-btuat-dr"
    priority                   = 10
  }
]
redirect_configuration = [
  {
    name                 = "btuat-dr-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btuat-dr"
  }
]
url_path_maps = []

health_probes = [
  {
    name                = "hp-btuat-dr"
    host                = "inuat-community.cargoes.com"
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
