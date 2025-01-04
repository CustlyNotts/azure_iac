subscription_id     = <subscription_id>
resource_group_name     = "rg-cns-infra-dr"
name                    = "agw-cnswaf-dr"
subnet_id               = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsdrhub/subnets/snet-agw-cnswaf-dr"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Owner" : "Daniel Stuart ",
  "ENV" : "DR",
  "Application Name" : "CCS-Canada",
  "RITM" : "RITM0112836"
}

public_ip_name     = "pip-agwcns-dr"
enable_http2 = false

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgwcns-dr"
private_ip_address             = "10.222.14.20"
private_ip_address_allocation  = "Static"

autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}

backend_address_pools = [
  {
    name  = "bp_cnsdr"
    ip_addresses = ["172.21.21.10"]
  }

]

backend_http_settings = [
   {
    name                  = "bs_cnsdr"
    cookie_based_affinity = "Disabled"
    host_name             = "eu-community.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_cnsdr"
  }
]

key_vault_subscription_id     = "5c7ffb4d-2288-4bc0-a920-78bab3f2db58"
key_vault_resource_group_name = "rg-cns-infra-dr"
key_vault_name                = "kv-cnsinfra-dr"
ssl_certificates = [
  {
    name                = "CloudFlare-combinedCertWithCA"
    key_vault_secret_id = "https://kv-cnsinfra-dr.vault.azure.net/secrets/CloudFlare-combinedCertWithCA/5365fd355eda40078e9c4ae4164dc0a5"
  }
]

http_listeners = [
    {
    name        = "list_cnsdr_http"
    host_name   = "eu-community.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_cnsdr_https"
    ssl_certificate_name = "CloudFlare-combinedCertWithCA"
    host_name            = "eu-community.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]

redirect_configuration = [
    {
    name                 = "http_to_https_cnsdr"
    redirect_type        = "Permanent"
    target_listener_name = "list_cnsdr_https"
    }
]

request_routing_rules = [
  {
    name                        = "rule_cnsdr-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_cnsdr_http"
    redirect_configuration_name = "http_to_https_cnsdr"
    priority                    = 10
  },
  {
    name                       = "rule_cnsdr_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_cnsdr_https"
    backend_address_pool_name  = "bp_cnsdr"
    backend_http_settings_name = "bs_cnsdr"
    priority                   = 11
  }
]

health_probes = [
  {
    name                = "hp_cnsdr"
    host                = "eu-community.cargoes.com"
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