subscription_id     = <subscription_id>
name                = "appgw-groupsecnew-prod"
resource_group_name = "rg-groupsec-infra-prod"
subnet_id           = "/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-groupsec-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-groupsec-appgw-prod/subnets/snet-groupsec-appgwnew-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Owner" : "Gagandeep Singh",
  "ENV" : "PROD",
  "Application Name" : "Application Gateway",
  "RITM" : "RITM0110213"
}
#firewall_policy_id = null
public_ip_name     = "pip_groupsecnew-prod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-groupsecnew-prod"
private_ip_address = "10.48.21.133"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_sailpoint-prod"
    ip_addresses = ["10.48.14.6","10.48.14.7"]
  }
]
backend_http_settings = [
  {
    name                  = "bs_sailpoint-prod"
    cookie_based_affinity = "Enabled"
    host_name             = "iam-ho.dpworld.com"
    path                  = ""
    enable_https          = true
    request_timeout       = 120
        port                  = 443
    probe_name            = "hp_sailpoint-prod"
  }
]
key_vault_subscription_id     = "91398afa-7cd4-4407-b48d-769bd28f53c8"
key_vault_resource_group_name = "rg-sailpoint-prod"
key_vault_name                = "kv-sailpointiiq-prod"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-dpworld"
    key_vault_secret_id = "https://kv-sailpointiiq-prod.vault.azure.net/secrets/Cloudflare-Fullcert-dpworld/57cefc599982427cba220c1ee3ba01fe"
  }
]
http_listeners = [
  {
    name        = "list_sailpoint_http"
    host_name   = "iam-ho.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_sailpoint_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld"
    host_name            = "iam-ho.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_sailpoint"
    redirect_type        = "Permanent"
    target_listener_name = "list_sailpoint_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_sailpoint-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_sailpoint_http"
    redirect_configuration_name = "http_to_https_sailpoint"
    priority                    = 1
  },
  {
    name                       = "rule_sailpoint_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_sailpoint_https"
    backend_address_pool_name  = "bp_sailpoint-prod"
    backend_http_settings_name = "bs_sailpoint-prod"
    priority                   = 2
  }
]

health_probes = [
  {
    name                = "hp_sailpoint-prod"
    host                = "iam-ho.dpworld.com"
    interval            = 180
    protocol            = "Https"
    path                = "/identityiq/ui/images/TopLogo1.png"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  }]
enable_private = true
