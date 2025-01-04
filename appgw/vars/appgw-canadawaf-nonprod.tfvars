subscription_id     = <subscription_id>
resource_group_name     = "rg-canadainfra-nonprod"
name                    = "appgw-canadawaf-nonprod"
subnet_id               = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-canadainfra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-canadainfra-nonprod/subnets/snet-agwwaf-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "NonProd",
  "Application Name" : "CCS-Canada",
  "RITM" : "RITM0108797"
}

public_ip_name     = "pip-agwcanada-nonprod"
enable_http2 = false

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgwcanada-nonprod"
private_ip_address             = "10.12.0.140"
private_ip_address_allocation  = "Static"

autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}

backend_address_pools = [
  {
    name  = "bp_canadatest"
    ip_addresses = ["10.222.252.5"]
  }

]

backend_http_settings = [
   {
    name                  = "bs_canadatest"
    cookie_based_affinity = "Disabled"
    host_name             = "catest-community.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_canadatest"
  }
]

key_vault_subscription_id     = "c65610b4-f532-47fb-b450-632f88d21fa8"
key_vault_resource_group_name = "rg-canadainfra-nonprod"
key_vault_name                = "kv-ccscanada-nonprod"
ssl_certificates = [
  {
    name                = "CloudFlare-start-dpworld-com"
    key_vault_secret_id = "https://kv-ccscanada-nonprod.vault.azure.net/secrets/CloudFlare-start-dpworld-com/75fc37789897451ca515f2c564b1ca0b"
  }
]

http_listeners = [
    {
    name        = "list_canadatest_http"
    host_name   = "catest-community.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_canadatest_https"
    ssl_certificate_name = "CloudFlare-start-dpworld-com"
    host_name            = "catest-community.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]

redirect_configuration = [
    {
    name                 = "http_to_https_canadatest"
    redirect_type        = "Permanent"
    target_listener_name = "list_canadatest_https"
    }
]

request_routing_rules = [
  {
    name                        = "rule_canadatest-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_canadatest_http"
    redirect_configuration_name = "http_to_https_canadatest"
    priority                    = 10
  },
  {
    name                       = "rule_canadatest_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_canadatest_https"
    backend_address_pool_name  = "bp_canadatest"
    backend_http_settings_name = "bs_canadatest"
    priority                   = 11
  }
]

health_probes = [
  {
    name                = "hp_canadatest"
    host                = "catest-community.dpworld.com"
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