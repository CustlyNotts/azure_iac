subscription_id     = <subscription_id>
resource_group_name     = "rg-btinfra-prod"
name                    = "appgw-btwaf-prod"
subnet_id               = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btinfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-btinfra-prod/subnets/snet-agwwaf-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Owner" : "Daniel Stuart",
  "ENV" : "Prod",
  "Application Name" : "CCS-Bharat Trade",
  "RITM" : "RITM0124892"
}

public_ip_name     = "pip-agwbt-prod"
enable_http2 = false

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgbt-prod"
private_ip_address             = "10.48.20.198"
private_ip_address_allocation  = "Static"

autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}

backend_address_pools = [
  {
    name  = "bp_btprod"
    ip_addresses = ["10.223.16.11"]
  }

]

backend_http_settings = [
   {
    name                  = "bs_btprod"
    cookie_based_affinity = "Disabled"
    host_name             = "in-community.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_btprod"
  }
]

key_vault_subscription_id     = "64421e13-ee76-43d2-93d5-bb5b97858ba5"
key_vault_resource_group_name = "rg-btinfra-nonprod"
key_vault_name                = "kv-ccsbt-nonprod"
ssl_certificates = [
  {
    name                = "CloudFlare-start-dpworld"
    key_vault_secret_id = "https://kv-ccsbt-nonprod.vault.azure.net/secrets/CloudFlare-start-dpworld/e816dd4b154141b4a2ea43507d553deb"
  }
]


http_listeners = [
    {
    name        = "list_btprod_http"
    host_name   = "in-community.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
 {
    name                 = "list_btprod_https"
    host_name            = "in-community.cargoes.com"
    ssl_certificate_name = "CloudFlare-start-dpworld"
    frontend_ip_configuration_name  = "private_fip"
  }
]

redirect_configuration = [
    {
    name                 = "http_to_https_btprod"
    redirect_type        = "Permanent"
    target_listener_name = "list_btprod_https"
    }
]

request_routing_rules = [
  {
    name                        = "rule_btprod-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_btprod_http"
    redirect_configuration_name = "http_to_https_btprod"
    priority                    = 10
  },
  {
    name                       = "rule_btprod_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_btprod_https"
    backend_address_pool_name  = "bp_btprod"
    backend_http_settings_name = "bs_btprod"
    priority                   = 11
  }
]

health_probes = [
  {
    name                = "hp_btprod"
    host                = "in-community.cargoes.com"
    interval            = 180
    protocol            = "Http"
    path                = "/probe/health.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }

]

enable_private = true