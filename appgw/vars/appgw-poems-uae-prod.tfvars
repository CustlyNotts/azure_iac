subscription_id     = <subscription_id>
name                = "appgw-poems-uae-prod"
resource_group_name = "rg-poems-appgw-uae-prod"
subnet_id           = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-poems-appgw-uae-prod/providers/Microsoft.Network/virtualNetworks/vnet-poems-appgw-uae-prod/subnets/snet-appgw-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags = {
  "env" : "PROD",
  "Application Name" : "Application Gateway UAE",
  "Application Owner" : "Hasaan Malik"
}
#firewall_policy_id = null
public_ip_name     = "pip_appgw-poems-uae-prod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-poems-uae-prod"
private_ip_address = "10.48.13.5"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_poems"
    ip_addresses = ["10.253.0.35"]
  }
]
backend_http_settings = [
  {
    name                  = "bs_poems"
    cookie_based_affinity = "Disabled"
    host_name             = "poems.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_poems"
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert"
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/certificates/Cloudflare/df1d1038a9ac404abce64aa73429b60e"
  }
]
http_listeners = [
  {
    name        = "list_poems_http"
    host_name   = "poems.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_poems_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "poems.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_poems"
    redirect_type        = "Permanent"
    target_listener_name = "list_poems_https"
  },
  {
    name                 = "http_to_https_ghsereports"
    redirect_type        = "Permanent"
    target_listener_name = "list_poems_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_poems-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_poems_http"
    redirect_configuration_name = "http_to_https_poems"
    priority                    = 10
  },
  {
    name                       = "rule_poems_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_poems_https"
    backend_address_pool_name  = "bp_poems"
    backend_http_settings_name = "bs_poems"
    priority                   = 11
  }
]

health_probes = [
  {
    name                = "hp_poems"
    host                = "poems.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/public"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }
]
enable_private = true
