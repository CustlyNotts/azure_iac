subscription_id     = <subscription_id>
name                = "appgw-dpworldcms-prod"
resource_group_name = "rg-dpworldcms-prod-infra"
subnet_id           = "/subscriptions/e0a9a8f4-21e9-4860-970c-042dd12d6539/resourceGroups/rg-dpworldcms-prod-infra/providers/Microsoft.Network/virtualNetworks/vnet-appgw-dpworldcms-prod/subnets/snet-appgw-dpworldcms-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "Dpworld CMS",
  "Application Owner" : "Bilal Adham",
  "ENV" : "Prod"
}
#firewall_policy_id = null
public_ip_name     = "pip_dpworldcms-prod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-dpworldcms-prod"
private_ip_address = "10.48.14.134"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_fulfillment"
    ip_addresses = ["10.48.200.54"] // ingress IP
  }

]
backend_http_settings = [
  {
    name                  = "bs_fulfillment"
    cookie_based_affinity = "Disabled"
    host_name             = "fulfillment.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_fulfillment" //Server Pool
  }
]
key_vault_subscription_id     = "e0a9a8f4-21e9-4860-970c-042dd12d6539"
key_vault_resource_group_name = "rg-dpworldcms-prod"
key_vault_name                = "kv-dpworldcms-prod"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullchain"
    key_vault_secret_id = "https://kv-dpworldcms-prod.vault.azure.net/secrets/Cloudflare-Fullchain/23d73be0b0534ea7b7de7aa344ba60df"
  } // SSL Certificate Details
]
http_listeners = [
  {
    name        = "list_fulfillment_http"
    host_name   = "fulfillment.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_fulfillment_https"
    ssl_certificate_name = "Cloudflare-Fullchain"
    host_name            = "fulfillment.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }

]
redirect_configuration = [
  {
    name                 = "http_to_https_fulfillment"
    redirect_type        = "Permanent"
    target_listener_name = "list_fulfillment_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_fulfillment-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_fulfillment_http"
    redirect_configuration_name = "http_to_https_fulfillment"
    priority                    = 10
  },
  {
    name                       = "rule_fulfillment-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_fulfillment_https"
    backend_address_pool_name  = "bp_fulfillment"
    backend_http_settings_name = "bs_fulfillment"
    priority                   = 11
  }
]

health_probes = [
  {
    name                = "hp_fulfillment"
    host                = "fulfillment.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }
  
  ]
enable_private = true
