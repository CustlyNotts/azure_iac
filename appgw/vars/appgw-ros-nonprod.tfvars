subscription_id     = <subscription_id>
name                = "appgw-ros-nonprod"
resource_group_name = "rg-ros-nonprod"
subnet_id           = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-ros-nonprod/subnets/snet-appgw-ros-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "ros",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "Non-Prod"
}
#firewall_policy_id = null
public_ip_name     = "pip-appgateway"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-ros-nonprod"
private_ip_address = "10.48.20.10"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_dev-rms"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_test-rms"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_staging-rms"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_dev-rms-fois"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_staging-ims"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_development-ims"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_test-ims"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_dev-api-gateway"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_test-api-gateway"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_staging-api-gateway"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_qa-api-gateway"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_dev2-ims"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_dev2-api-gateway"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_staging-rms-fois"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_qa-ims"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_pt-test-api-gateway"
    ip_addresses = ["10.171.153.19"]
  },
  {
    name  = "bp_pt-test-ims"
    ip_addresses = ["10.171.153.19"]
  },
]
backend_http_settings = [
  {
    name                  = "bs_dev-rms"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-rms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_dev-rms"
  },
  {
    name                  = "bs_test-rms"
    cookie_based_affinity = "Disabled"
    host_name             = "test-rms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_test-rms"
  },
  {
    name                  = "bs_staging-rms"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-rms.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging-rms"
  },
  {
    name                  = "bs_dev-rms-fois"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-rms-fois.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_dev-rms-fois"
  },
  {
    name                  = "bs_staging-ims"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-ims.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging-ims"
  },
  {
    name                  = "bs_development-ims"
    cookie_based_affinity = "Disabled"
    host_name             = "development-ims.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_development-ims"
  },
  {
    name                  = "bs_test-ims"
    cookie_based_affinity = "Disabled"
    host_name             = "test-ims.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_test-ims"
  },
  {
    name                  = "bs_dev-api-gateway"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-api-gateway.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_dev-api-gateway"
  },
  {
    name                  = "bs_test-api-gateway"
    cookie_based_affinity = "Disabled"
    host_name             = "test-api-gateway.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_test-api-gateway"
  },
  {
    name                  = "bs_staging-api-gateway"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-api-gateway.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging-api-gateway"
  },
  {
    name                  = "bs_qa-api-gateway"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-api-gateway.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa-api-gateway"
  },
  {
    name                  = "bs_dev2-ims"
    cookie_based_affinity = "Disabled"
    host_name             = "dev2-ims.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_dev2-ims"
  },
  {
    name                  = "bs_dev2-api-gateway"
    cookie_based_affinity = "Disabled"
    host_name             = "dev2-api-gateway.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120 
    port                  = 80
    probe_name            = "hp_dev2-api-gateway"
  },
  {
    name                  = "bs_staging-rms-fois"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-rms-fois.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging-rms-fois"
  },
  {
    name                  = "bs_qa-ims"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-ims.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa-ims"
  },
  {
    name                  = "bs_pt-test-api-gateway"
    cookie_based_affinity = "Disabled"
    host_name             = "pt-test-api-gateway.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_pt-test-api-gateway"
  },
  {
    name                  = "bs_pt-test-ims"
    cookie_based_affinity = "Disabled"
    host_name             = "pt-test-ims.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_pt-test-ims"
  }
]
key_vault_subscription_id     = "3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4"
key_vault_resource_group_name = "rg-ros-prod"
key_vault_name                = "kv-ros-prd"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-dpworld1"
    key_vault_secret_id = "https://kv-ros-prd.vault.azure.net/secrets/Cloudflare-Fullcert-dpworld1/a334fb24eb084f91958aa2a2c574af16"
  }
]
http_listeners = [
  {
    name        = "list_dev-rms_http"
    host_name   = "dev-rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_dev-rms_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "dev-rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_test-rms_http"
    host_name   = "test-rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_test-rms_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "test-rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-rms_http"
    host_name   = "staging-rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-rms_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "staging-rms.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_dev-rms-fois_http"
    host_name   = "dev-rms-fois.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_dev-rms-fois_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "dev-rms-fois.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-ims_http"
    host_name   = "staging-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-ims_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "staging-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_development-ims_http"
    host_name   = "development-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_development-ims_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "development-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_test-ims_http"
    host_name   = "test-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_test-ims_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "test-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_dev-api-gateway_http"
    host_name   = "dev-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_dev-api-gateway_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "dev-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_test-api-gateway_http"
    host_name   = "test-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_test-api-gateway_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "test-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-api-gateway_http"
    host_name   = "staging-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-api-gateway_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "staging-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-api-gateway_http"
    host_name   = "qa-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-api-gateway_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "qa-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_dev2-ims_http"
    host_name   = "dev2-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_dev2-ims_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "dev2-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_dev2-api-gateway_http"
    host_name   = "dev2-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_dev2-api-gateway_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "dev2-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-rms-fois_http"
    host_name   = "staging-rms-fois.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-rms-fois_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "staging-rms-fois.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-ims_http"
    host_name   = "qa-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-ims_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "qa-ims-fois.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_pt-test-api-gateway_http"
    host_name   = "pt-test-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_pt-test-api-gateway_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "pt-test-api-gateway.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_pt-test-ims_http"
    host_name   = "pt-test-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_pt-test-ims_https"
    ssl_certificate_name = "Cloudflare-Fullcert-dpworld1"
    host_name            = "pt-test-ims.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_dev-rms"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev-rms_https"
  },
  {
    name                 = "http_to_https_test-rms"
    redirect_type        = "Permanent"
    target_listener_name = "list_test-rms_https"
  },
  {
    name                 = "http_to_https_staging-rms"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-rms_https"
  },
  {
    name                 = "http_to_https_dev-rms-fois"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev-rms-fois_https"
  },
  {
    name                 = "http_to_https_staging-ims"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-ims_https"
  },
  {
    name                 = "http_to_https_development-ims"
    redirect_type        = "Permanent"
    target_listener_name = "list_development-ims_https"
  },
  {
    name                 = "http_to_https_test-ims"
    redirect_type        = "Permanent"
    target_listener_name = "list_test-ims_https"
  },
  {
    name                 = "http_to_https_dev-api-gateway"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev-api-gateway_https"
  },
  {
    name                 = "http_to_https_test-api-gateway"
    redirect_type        = "Permanent"
    target_listener_name = "list_test-api-gateway_https"
  },
  {
    name                 = "http_to_https_staging-api-gateway"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-api-gateway_https"
  },
  {
    name                 = "http_to_https_qa-api-gateway"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-api-gateway_https"
  },
  {
    name                 = "http_to_https_dev2-ims"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev2-ims_https"
  },
  {
    name                 = "http_to_https_dev2-api-gateway"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev2-api-gateway_https"
  },
  {
    name                 = "http_to_https_staging-rms-fois"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-rms-fois_https"
  },
  {
    name                 = "http_to_https_qa-ims"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-ims_https"
  },
  {
    name                 = "http_to_https_pt-test-api-gateway"
    redirect_type        = "Permanent"
    target_listener_name = "list_pt-test-api-gateway_https"
  },
  {
    name                 = "http_to_https_pt-test-ims"
    redirect_type        = "Permanent"
    target_listener_name = "list_pt-test-ims_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_dev-rms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev-rms_http"
    redirect_configuration_name = "http_to_https_dev-rms"
    priority                    = 10
  },
  {
    name                       = "rule_dev-rms_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev-rms_https"
    backend_address_pool_name  = "bp_dev-rms"
    backend_http_settings_name = "bs_dev-rms"
    priority                   = 11
  },
  {
    name                        = "rule_test-rms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_test-rms_http"
    redirect_configuration_name = "http_to_https_test-rms"
    priority                    = 12
  },
  {
    name                       = "rule_test-rms_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_test-rms_https"
    backend_address_pool_name  = "bp_test-rms"
    backend_http_settings_name = "bs_test-rms"
    priority                   = 13
  },
  {
    name                        = "rule_staging-rms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-rms_http"
    redirect_configuration_name = "http_to_https_staging-rms"
    priority                    = 14
  },
  {
    name                       = "rule_staging-rms_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-rms_https"
    backend_address_pool_name  = "bp_staging-rms"
    backend_http_settings_name = "bs_staging-rms"
    priority                   = 15
  },
  {
    name                        = "rule_dev-rms-fois-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev-rms-fois_http"
    redirect_configuration_name = "http_to_https_dev-rms-fois"
    priority                    = 16
  },
  {
    name                       = "rule_dev-rms-fois_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev-rms-fois_https"
    backend_address_pool_name  = "bp_dev-rms-fois"
    backend_http_settings_name = "bs_dev-rms-fois"
    priority                   = 17
  },
  {
    name                        = "rule_staging-ims-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-ims_http"
    redirect_configuration_name = "http_to_https_staging-ims"
    priority                    = 18
  },
  {
    name                       = "rule_staging-ims_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-ims_https"
    backend_address_pool_name  = "bp_staging-ims"
    backend_http_settings_name = "bs_staging-ims"
    priority                   = 19
  },
  {
    name                        = "rule_development-ims-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_development-ims_http"
    redirect_configuration_name = "http_to_https_development-ims"
    priority                    = 20
  },
  {
    name                       = "rule_development-ims_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_development-ims_https"
    backend_address_pool_name  = "bp_development-ims"
    backend_http_settings_name = "bs_development-ims"
    priority                   = 21
  },
  {
    name                        = "rule_test-ims-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_test-ims_http"
    redirect_configuration_name = "http_to_https_test-ims"
    priority                    = 22
  },
  {
    name                       = "rule_test-ims_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_test-ims_https"
    backend_address_pool_name  = "bp_test-ims"
    backend_http_settings_name = "bs_test-ims"
    priority                   = 23
  },
  {
    name                        = "rule_dev-api-gateway-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev-api-gateway_http"
    redirect_configuration_name = "http_to_https_dev-api-gateway"
    priority                    = 24
  },
  {
    name                       = "rule_dev-api-gateway_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev-api-gateway_https"
    backend_address_pool_name  = "bp_dev-api-gateway"
    backend_http_settings_name = "bs_dev-api-gateway"
    priority                   = 25
  },
  {
    name                        = "rule_test-api-gateway-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_test-api-gateway_http"
    redirect_configuration_name = "http_to_https_test-api-gateway"
    priority                    = 26
  },
  {
    name                       = "rule_test-api-gateway_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_test-api-gateway_https"
    backend_address_pool_name  = "bp_test-api-gateway"
    backend_http_settings_name = "bs_test-api-gateway"
    priority                   = 27
  },
  {
    name                        = "rule_staging-api-gateway-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-api-gateway_http"
    redirect_configuration_name = "http_to_https_staging-api-gateway"
    priority                    = 28
  },
  {
    name                       = "rule_staging-api-gateway_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-api-gateway_https"
    backend_address_pool_name  = "bp_staging-api-gateway"
    backend_http_settings_name = "bs_staging-api-gateway"
    priority                   = 29
  },
  {
    name                        = "rule_qa-api-gateway-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-api-gateway_http"
    redirect_configuration_name = "http_to_https_qa-api-gateway"
    priority                    = 30
  },
  {
    name                       = "rule_qa-api-gateway_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-api-gateway_https"
    backend_address_pool_name  = "bp_qa-api-gateway"
    backend_http_settings_name = "bs_qa-api-gateway"
    priority                   = 31
  },
  {
    name                        = "rule_dev2-ims-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev2-ims_http"
    redirect_configuration_name = "http_to_https_dev2-ims"
    priority                    = 32
  },
  {
    name                       = "rule_dev2-ims_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev2-ims_https"
    backend_address_pool_name  = "bp_dev2-ims"
    backend_http_settings_name = "bs_dev2-ims"
    priority                   = 33
  },
  {
    name                        = "rule_dev2-api-gateway-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev2-api-gateway_http"
    redirect_configuration_name = "http_to_https_dev2-api-gateway"
    priority                    = 34
  },
  {
    name                       = "rule_dev2-api-gateway_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev2-api-gateway_https"
    backend_address_pool_name  = "bp_dev2-api-gateway"
    backend_http_settings_name = "bs_dev2-api-gateway"
    priority                   = 35
  },
  {
    name                        = "rule_staging-rms-fois-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-rms-fois_http"
    redirect_configuration_name = "http_to_https_staging-rms-fois"
    priority                    = 36
  },
  {
    name                       = "rule_staging-rms-fois_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-rms-fois_https"
    backend_address_pool_name  = "bp_staging-rms-fois"
    backend_http_settings_name = "bs_staging-rms-fois"
    priority                   = 37
  },
  {
    name                        = "rule_qa-ims-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-ims_http"
    redirect_configuration_name = "http_to_https_qa-ims"
    priority                    = 38
  },
  {
    name                       = "rule_qa-ims_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-ims_https"
    backend_address_pool_name  = "bp_qa-ims"
    backend_http_settings_name = "bs_qa-ims"
    priority                   = 39
  },
  {
    name                        = "rule_pt-test-api-gateway-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_pt-test-api-gateway_http"
    redirect_configuration_name = "http_to_https_pt-test-api-gateway"
    priority                    = 40
  },
  {
    name                       = "rule_pt-test-api-gateway_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_pt-test-api-gateway_https"
    backend_address_pool_name  = "bp_pt-test-api-gateway"
    backend_http_settings_name = "bs_pt-test-api-gateway"
    priority                   = 41
  },
  {
    name                        = "rule_pt-test-ims-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_pt-test-ims_http"
    redirect_configuration_name = "http_to_https_pt-test-ims"
    priority                    = 42
  },
  {
    name                       = "rule_pt-test-ims_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_pt-test-ims_https"
    backend_address_pool_name  = "bp_pt-test-ims"
    backend_http_settings_name = "bs_pt-test-ims"
    priority                   = 43
  }
]
health_probes = [
  {
    name                = "hp_dev-rms"
    host                = "dev-rms.dpworld.com"
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
    name                = "hp_test-rms"
    host                = "test-rms.dpworld.com"
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
    name                = "hp_staging-rms"
    host                = "staging-rms.dpworld.com"
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
    name                = "hp_dev-rms-fois"
    host                = "dev-rms-fois.dpworld.com"
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
    name                = "hp_staging-ims"
    host                = "staging-ims.dpworld.com"
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
    name                = "hp_development-ims"
    host                = "development-ims.dpworld.com"
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
    name                = "hp_test-ims"
    host                = "test-ims.dpworld.com"
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
    name                = "hp_dev-api-gateway"
    host                = "dev-api-gateway.dpworld.com"
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
    name                = "hp_test-api-gateway"
    host                = "test-api-gateway.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/actuator/health"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_staging-api-gateway"
    host                = "staging-api-gateway.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/actuator/health"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_qa-api-gateway"
    host                = "qa-api-gateway.dpworld.com"
    interval            = 5
    protocol            = "Http"
    path                = "/actuator/health"
    timeout             = 10
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_dev2-ims"
    host                = "dev2-ims.dpworld.com"
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
    name                = "hp_dev2-api-gateway"
    host                = "dev2-api-gateway.dpworld.com"
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
    name                = "hp_staging-rms-fois"
    host                = "staging-rms-fois.dpworld.com"
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
    name                = "hp_qa-ims"
    host                = "qa-ims.dpworld.com"
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
    name                = "hp_pt-test-api-gateway"
    host                = "pt-test-api-gateway.dpworld.com"
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
    name                = "hp_pt-test-ims"
    host                = "pt-test-ims.dpworld.com"
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
