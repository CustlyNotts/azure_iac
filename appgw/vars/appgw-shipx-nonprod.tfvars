subscription_id     = <subscription_id>
name                = "appgw-shipx-nonprod"
resource_group_name = "rg-cargoesshipxdev-infra"
subnet_id           = "/subscriptions/96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8/resourceGroups/rg-cargoesshipxdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-appgw-shipx-nonprod/subnets/snet-appgw-shipx-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "Shipx",
  "Application Owner" : "Shiv Suthar/Ritesh Singh",
  "ENV" : "NonProd"
}
#firewall_policy_id = null
public_ip_name     = "pip_shipx-nonprod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-shipx-nonprod"
private_ip_address = "10.48.14.166"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_dev_expresstms"
    ip_addresses = ["10.2.8.4"] // ingress IP
  },
  {
    name  = "bp_staging_expresstms"
    ip_addresses = ["10.2.8.5"] // ingress IP
  },
  {
    name  = "bp_qa_expresstms"
    ip_addresses = ["10.2.8.4"] // ingress IP
  }
  
]
backend_http_settings = [
  {
    name                  = "bs_dev_expresstms"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-expresstms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_dev_expresstms" //Server Pool
  },
  {
    name                  = "bs_qa_expresstms"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-expresstms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa_expresstms" //Server Pool
  },
   {
    name                  = "bs_staging_expresstms"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-expresstms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging_expresstms" //Server Pool
  }
]
key_vault_subscription_id     = "96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8"
key_vault_resource_group_name = "rg-tms-nonprod"
key_vault_name                = "kv-tms-nonprod"
ssl_certificates = [
  {
    name                = "dpworld-full-ca"
    key_vault_secret_id = "https://kv-tms-nonprod.vault.azure.net/secrets/dpworld-full-ca/0d60c7c8333e4cbaab2af8366ab3cb8a"
  } // SSL Certificate Details
]
http_listeners = [
  {
    name        = "list_dev_expresstms_http"
    host_name   = "dev-expresstms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_dev_expresstms_https"
    ssl_certificate_name = "dpworld-full-ca"
    host_name            = "dev-expresstms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
   {
    name        = "list_qa_expresstms_http"
    host_name   = "qa-expresstms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_qa_expresstms_https"
    ssl_certificate_name = "dpworld-full-ca"
    host_name            = "qa-expresstms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
     {
    name        = "list_staging_expresstms_http"
    host_name   = "staging-expresstms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_staging_expresstms_https"
    ssl_certificate_name = "dpworld-full-ca"
    host_name            = "staging-expresstms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
  
]
redirect_configuration = [
  {
    name                 = "http_to_https_dev_expresstms"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev_expresstms_https"
  },
  {
    name                 = "http_to_https_qa_expresstms"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa_expresstms_https"
  },
  {
    name                 = "http_to_https_staging_expresstms"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging_expresstms_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_dev_expresstms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev_expresstms_http"
    redirect_configuration_name = "http_to_https_dev_expresstms"
    priority                    = 10
  },
  {
    name                       = "rule_dev_expresstms-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev_expresstms_https"
    backend_address_pool_name  = "bp_dev_expresstms"
    backend_http_settings_name = "bs_dev_expresstms"
    priority                   = 11
  },
  {
    name                        = "rule_qa_expresstms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa_expresstms_http"
    redirect_configuration_name = "http_to_https_qa_expresstms"
    priority                    = 12
  },
  {
    name                       = "rule_qa_expresstms-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa_expresstms_https"
    backend_address_pool_name  = "bp_qa_expresstms"
    backend_http_settings_name = "bs_qa_expresstms"
    priority                   = 13
  },
   {
    name                        = "rule_staging_expresstms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging_expresstms_http"
    redirect_configuration_name = "http_to_https_staging_expresstms"
    priority                    = 14
  },
  {
    name                       = "rule_staging_expresstms-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging_expresstms_https"
    backend_address_pool_name  = "bp_staging_expresstms"
    backend_http_settings_name = "bs_staging_expresstms"
    priority                   = 15
  }
]

health_probes = [
  {
    name                = "hp_dev_expresstms"
    host                = "dev-expresstms.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_qa_expresstms"
    host                = "qa-expresstms.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_staging_expresstms"
    host                = "staging-expresstms.dpworld.com"
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
