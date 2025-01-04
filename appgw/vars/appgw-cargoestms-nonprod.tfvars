subscription_id     = <subscription_id>
name                = "appgw-cargoestms-nonprod"
resource_group_name = "rg-cargoestms-nonprod-infra"
subnet_id           = "/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-nonprod-infra/providers/Microsoft.Network/virtualNetworks/vnet-appgw-cargoestms-nonprod/subnets/snet-appgw-cargoestms-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "Cargoes TMS",
  "Application Owner" : "Shiv Suthar/Ritesh Singh",
  "ENV" : "NonProd"
}
#firewall_policy_id = null
public_ip_name     = "pip_cargoestms-nonprod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-cargoestms-nonprod"
private_ip_address = "10.48.5.230"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_dev_tmsapi"
    ip_addresses = ["10.48.48.84"] // ingress IP
  },
  {
    name  = "bp_staging_tmsapi"
    ip_addresses = ["10.48.48.84"] // ingress IP
  },
  {
    name  = "bp_qa_tmsapi"
    ip_addresses = ["10.48.48.84"] // ingress IP
  },
  {
    name  = "bp_qa_tms"
    ip_addresses = ["10.48.48.84"] // ingress IP
  },
  {
    name  = "bp_staging_tms"
    ip_addresses = ["10.48.48.84"] // ingress IP
  },
  {
    name  = "bp_dev_tms"
    ip_addresses = ["10.48.48.84"] // ingress IP
  },
  {
    name  = "bp_pt_tms"
    ip_addresses = ["10.48.48.84"] // ingress IP
  },
  {
    name  = "bp_pt_tmsapi"
    ip_addresses = ["10.48.48.84"] // ingress IP
  }
  
]
backend_http_settings = [
  {
    name                  = "bs_dev_tmsapi"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-tms-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_dev_tmsapi" //Server Pool
  },
  {
    name                  = "bs_qa_tmsapi"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-tms-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa_tmsapi" //Server Pool
  },
   {
    name                  = "bs_staging_tmsapi"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-tms-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging_tmsapi" //Server Pool
  },
  {
    name                  = "bs_qa_tms"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-tms.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa_tms" //Server Pool
  },
   {
    name                  = "bs_staging_tms"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-tms.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging_tms" //Server Pool
  },
   {
    name                  = "bs_dev_tms"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-tms.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_dev_tms" //Server Pool
  },
  {
    name                  = "bs_pt_tms"
    cookie_based_affinity = "Disabled"
    host_name             = "pt-tms.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_pt_tms" //Server Pool
  },
  {
    name                  = "bs_pt_tmsapi"
    cookie_based_affinity = "Disabled"
    host_name             = "pt-tms-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_pt_tmsapi" //Server Pool
  }
]
key_vault_subscription_id     = "3ed00aa8-c4b8-49f3-8254-5f44946d0be0"
key_vault_resource_group_name = "rg-cargoestms-nonprod"
key_vault_name                = "kv-cargoestms-nonprod"
ssl_certificates = [
  {
    name                = "cargoes-full-ca"
    key_vault_secret_id = "https://kv-cargoestms-nonprod.vault.azure.net/secrets/cargoes-full-ca/ef1d10f113fa47e5945e66f279060f2e"
  } // SSL Certificate Details
]
http_listeners = [
  {
    name        = "list_dev_tmsapi_http"
    host_name   = "dev-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_dev_tmsapi_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "dev-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
   {
    name        = "list_qa_tmsapi_http"
    host_name   = "qa-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_qa_tmsapi_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "qa-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
     {
    name        = "list_staging_tmsapi_http"
    host_name   = "staging-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_staging_tmsapi_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "staging-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa_tms_http"
    host_name   = "qa-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_qa_tms_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "qa-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging_tms_http"
    host_name   = "staging-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_staging_tms_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "staging-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_dev_tms_http"
    host_name   = "dev-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_dev_tms_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "dev-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_pt_tms_http"
    host_name   = "pt-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_pt_tms_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "pt-tms.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
       {
    name        = "list_pt_tmsapi_http"
    host_name   = "pt-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_pt_tmsapi_https"
    ssl_certificate_name = "cargoes-full-ca"
    host_name            = "pt-tms-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }
  
]
redirect_configuration = [
  {
    name                 = "http_to_https_dev_tmsapi"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev_tmsapi_https"
  },
  {
    name                 = "http_to_https_qa_tmsapi"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa_tmsapi_https"
  },
  {
    name                 = "http_to_https_staging_tmsapi"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging_tmsapi_https"
  },
   {
    name                 = "http_to_https_qa_tms"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa_tms_https"
  },
  {
    name                 = "http_to_https_staging_tms"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging_tms_https"
  },
  {
    name                 = "http_to_https_dev_tms"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev_tms_https"
  },
  {
    name                 = "http_to_https_pt_tms"
    redirect_type        = "Permanent"
    target_listener_name = "list_pt_tms_https"
  },
    {
    name                 = "http_to_https_pt_tmsapi"
    redirect_type        = "Permanent"
    target_listener_name = "list_pt_tmsapi_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_dev_tmsapi-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev_tmsapi_http"
    redirect_configuration_name = "http_to_https_dev_tmsapi"
    priority                    = 10
  },
  {
    name                       = "rule_dev_tmsapi-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev_tmsapi_https"
    backend_address_pool_name  = "bp_dev_tmsapi"
    backend_http_settings_name = "bs_dev_tmsapi"
    priority                   = 11
  },
  {
    name                        = "rule_qa_tmsapi-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa_tmsapi_http"
    redirect_configuration_name = "http_to_https_qa_tmsapi"
    priority                    = 12
  },
  {
    name                       = "rule_qa_tmsapi-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa_tmsapi_https"
    backend_address_pool_name  = "bp_qa_tmsapi"
    backend_http_settings_name = "bs_qa_tmsapi"
    priority                   = 13
  },
   {
    name                        = "rule_staging_tmsapi-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging_tmsapi_http"
    redirect_configuration_name = "http_to_https_staging_tmsapi"
    priority                    = 14
  },
  {
    name                       = "rule_staging_tmsapi-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging_tmsapi_https"
    backend_address_pool_name  = "bp_staging_tmsapi"
    backend_http_settings_name = "bs_staging_tmsapi"
    priority                   = 15
  },
  {
    name                        = "rule_qa_tms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa_tms_http"
    redirect_configuration_name = "http_to_https_qa_tms"
    priority                    = 16
  },
  {
    name                       = "rule_qa_tms-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa_tms_https"
    backend_address_pool_name  = "bp_qa_tms"
    backend_http_settings_name = "bs_qa_tms"
    priority                   = 17
  },
   {
    name                        = "rule_staging_tms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging_tms_http"
    redirect_configuration_name = "http_to_https_staging_tms"
    priority                    = 18
  },
  {
    name                       = "rule_staging_tms-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging_tms_https"
    backend_address_pool_name  = "bp_staging_tms"
    backend_http_settings_name = "bs_staging_tms"
    priority                   = 19
  },
  {
    name                        = "rule_dev_tms-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev_tms_http"
    redirect_configuration_name = "http_to_https_dev_tms"
    priority                    = 20
  },
  {
    name                       = "rule_dev_tms-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev_tms_https"
    backend_address_pool_name  = "bp_dev_tms"
    backend_http_settings_name = "bs_dev_tms"
    priority                   = 21
  },
  {
    name                       = "rule_pt_tms-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_pt_tms_https"
    backend_address_pool_name  = "bp_pt_tms"
    backend_http_settings_name = "bs_pt_tms"
    priority                   = 22
  },
  {
    name                       = "rule_pt_tmsapi-https"
    rule_type                  = "Basic"
    http_listener_name         = "list_pt_tmsapi_https"
    backend_address_pool_name  = "bp_pt_tmsapi"
    backend_http_settings_name = "bs_pt_tmsapi"
    priority                   = 23
  }
]

health_probes = [
  {
    name                = "hp_dev_tmsapi"
    host                = "dev-tms-api.cargoes.com"
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
    name                = "hp_qa_tmsapi"
    host                = "qa-tms-api.cargoes.com"
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
    name                = "hp_staging_tmsapi"
    host                = "staging-tms-api.cargoes.com"
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
    name                = "hp_qa_tms"
    host                = "qa-tms.cargoes.com"
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
    name                = "hp_staging_tms"
    host                = "staging-tms.cargoes.com"
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
    name                = "hp_dev_tms"
    host                = "dev-tms.cargoes.com"
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
    name                = "hp_pt_tms"
    host                = "pt-tms.cargoes.com"
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
    name                = "hp_pt_tmsapi"
    host                = "pt-tms-api.cargoes.com"
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
