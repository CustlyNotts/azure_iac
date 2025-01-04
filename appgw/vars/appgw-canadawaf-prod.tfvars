subscription_id     = <subscription_id>
resource_group_name     = "rg-canadainfra-prod"
name                    = "appgw-canadawaf-prod"
subnet_id               = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-canadainfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-canadainfra-prod/subnets/snet-agwwaf-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "PROD",
  "Application Name" : "CCS-Canada",
  "RITM" : "RITM0121696"
}

public_ip_name     = "pip-agwcanadawaf-prod"
enable_http2 = false

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgwcanada-prod"
private_ip_address             = "10.12.2.10"
private_ip_address_allocation  = "Static"

autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}

backend_address_pools = [
  {
    name  = "bp_canadaprod"
    ip_addresses = ["10.210.136.6","10.210.136.9"]
    
  }

]

backend_http_settings = [
   {
    name                  = "bs_canadaprod"
    cookie_based_affinity = "Disabled"
    host_name             = "ca-community.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_canadaprod"
  }
]

key_vault_subscription_id     = "c65610b4-f532-47fb-b450-632f88d21fa8"
key_vault_resource_group_name = "rg-canadainfra-prod"
key_vault_name                = "kv-ccscanada-prod"
ssl_certificates = [
  {
    name                = "CloudFlare-start-dpworld-com"
    key_vault_secret_id = "https://kv-ccscanada-prod.vault.azure.net/secrets/CloudFlare-start-dpworld-com/20b3989d2ec044f48b0dab51b0d2a79f"
  }
]

http_listeners = [
    {
    name        = "list_canadaprod_http"
    host_name   = "ca-community.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_canadaprod_https"
    ssl_certificate_name = "CloudFlare-start-dpworld-com"
    host_name            = "ca-community.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]

redirect_configuration = [
    {
    name                 = "http_to_https_canadaprod"
    redirect_type        = "Permanent"
    target_listener_name = "list_canadaprod_https"
    }
]

request_routing_rules = [
  {
    name                        = "rule_canadaprod-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_canadaprod_http"
    redirect_configuration_name = "http_to_https_canadaprod"
    priority                    = 10
  },
  {
    name                       = "rule_canadaprod_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_canadaprod_https"
    backend_address_pool_name  = "bp_canadaprod"
    backend_http_settings_name = "bs_canadaprod"
    priority                   = 11
  }
]

health_probes = [
  {
    name                = "hp_canadaprod"
    host                = "ca-community.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }

]

enable_private = true