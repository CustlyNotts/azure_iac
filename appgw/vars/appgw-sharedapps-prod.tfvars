subscription_id     = <subscription_id>
name                = "appgw-sharedapps-prod"
resource_group_name = "cargoes-prod"
subnet_id           = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoessharedapps-prod/subnets/snet-appgateway-prod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "Sharedapps Prod",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "Prod"
}
#firewall_policy_id = null
public_ip_name     = "pip_sharedapps-Prod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-sharedapps-Prod"
private_ip_address = "10.240.200.10"
private_ip_address_allocation = "Static"

autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}
backend_address_pools = [
  {
    name  = "bp-address-service-api"
    ip_addresses = ["10.240.192.97"] // ingress IP
  },
  {
    name  = "bp-document-service-api"
    ip_addresses = ["10.240.192.97"]
  },
  {
    name  = "bp-document-service"
    ip_addresses = ["10.240.192.97"]
  },
  {
    name  = "bp-notification-service"
    ip_addresses = ["10.240.192.97"]
  },
  {
    name  = "bp-notification-service-api"
    ip_addresses = ["10.240.192.97"]
  },
  {
    name  = "bp-feedback-service-api"
    ip_addresses = ["10.240.192.97"]
  },
  {
    name  = "bp-ledger-api"
    ip_addresses = ["10.240.192.97"]
  },
  {
    name  = "bp-ticket-service-api"
    ip_addresses = ["10.240.192.97"]
  },
  {
    name  = "bp-datachain"
    ip_addresses = ["10.240.192.97"]
  }
]
backend_http_settings = [
  {
    name                  = "bs-address-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "address-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp-address-service-api" //Server Pool
  },
  {
    name                  = "bs-document-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "document-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp-document-service-api"
  },
  {
    name                  = "bs-document-service"
    cookie_based_affinity = "Disabled"
    host_name             = "document-service.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp-document-service"
  },
  {
    name                  = "bs-notification-service"
    cookie_based_affinity = "Disabled"
    host_name             = "notification-service.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp-notification-service"
  },
  {
    name                  = "bs-notification-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "notification-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp-notification-service-api"
  },
  {
    name                  = "bs-feedback-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "feedback-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp-feedback-service-api"
  },
  {
    name                  = "bs-ledger-api"
    cookie_based_affinity = "Disabled"
    host_name             = "ledger-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-ledger-api"
  },
  {
    name                  = "bs-ticket-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "ticket-service-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-ticket-service-api"
  },
  {
    name                  = "bs-datachain"
    cookie_based_affinity = "Disabled"
    host_name             = "datachain.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-datachain"
  }
]
key_vault_subscription_id     = "368014ab-c35d-4615-a165-842d87aec6f5"
key_vault_resource_group_name = "cargoes-prod"
key_vault_name                = "kv-foundationser-prod"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-Cargoes1"
    key_vault_secret_id = "https://kv-foundationser-prod.vault.azure.net/secrets/Cloudflare-Fullcert-Cargoes1/c66a0fa7553c4b74aff708e71b4799cf"
  } // SSL Certificate Details
]
http_listeners = [
  {
    name        = "list-address-service-api_http"
    host_name   = "address-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list-address-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "address-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-document-service-api_http"
    host_name   = "document-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-document-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "document-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-document-service_http"
    host_name   = "document-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-document-service_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "document-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-notification-service_http"
    host_name   = "notification-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-notification-service_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "notification-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-notification-service-api_http"
    host_name   = "notification-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-notification-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "notification-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-feedback-service-api_http"
    host_name   = "feedback-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-feedback-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "feedback-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-ledger-api_http"
    host_name   = "ledger-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-ledger-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "ledger-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-ticket-service-api_http"
    host_name   = "ticket-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-ticket-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "ticket-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list-datachain_http"
    host_name   = "datachain.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list-datachain_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "datachain.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_address-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list-address-service-api_https"
  },
  {
    name                 = "http_to_https_document-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list-document-service-api_https"
  },
  {
    name                 = "http_to_https_document-service"
    redirect_type        = "Permanent"
    target_listener_name = "list-document-service_https"
  },
  {
    name                 = "http_to_https_notification-service"
    redirect_type        = "Permanent"
    target_listener_name = "list-notification-service_https"
  },
  {
    name                 = "http_to_https_notification-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list-notification-service-api_https"
  },
  {
    name                 = "http_to_https_feedback-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list-feedback-service-api_https"
  },
  {
    name                 = "http_to_https_ledger-api"
    redirect_type        = "Permanent"
    target_listener_name = "list-ledger-api_https"
  },
  {
    name                 = "http_to_https_ticket-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list-ticket-service-api_https"
  },
  {
    name                 = "http_to_https_datachain"
    redirect_type        = "Permanent"
    target_listener_name = "list-datachain_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule-address-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-address-service-api_http"
    redirect_configuration_name = "http_to_https_address-service-api"
    priority                    = 10
  },
  {
    name                       = "rule-address-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-address-service-api_https"
    backend_address_pool_name  = "bp-address-service-api"
    backend_http_settings_name = "bs-address-service-api"
    priority                   = 11
  },
  {
    name                        = "rule-document-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-document-service-api_http"
    redirect_configuration_name = "http_to_https_document-service-api"
    priority                    = 12
  },
  {
    name                       = "rule-document-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-document-service-api_https"
    backend_address_pool_name  = "bp-document-service-api"
    backend_http_settings_name = "bs-document-service-api"
    priority                   = 13
  },
  {
    name                        = "rule-document-service-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-document-service_http"
    redirect_configuration_name = "http_to_https_document-service"
    priority                    = 14
  },
  {
    name                       = "rule-document-service_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-document-service_https"
    backend_address_pool_name  = "bp-document-service"
    backend_http_settings_name = "bs-document-service"
    priority                   = 15
  },
   {
    name                        = "rule-notification-service-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-notification-service_http"
    redirect_configuration_name = "http_to_https_notification-service"
    priority                    = 16
  },
  {
    name                       = "rule-notification-service_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-notification-service_https"
    backend_address_pool_name  = "bp-notification-service"
    backend_http_settings_name = "bs-notification-service"
    priority                   = 17
  },
  {
    name                        = "rule-notification-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-notification-service-api_http"
    redirect_configuration_name = "http_to_https_notification-service-api"
    priority                    = 18
  },
  {
    name                       = "rule-notification-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-notification-service-api_https"
    backend_address_pool_name  = "bp-notification-service-api"
    backend_http_settings_name = "bs-notification-service-api"
    priority                   = 19
  },
  {
    name                        = "rule-feedback-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-feedback-service-api_http"
    redirect_configuration_name = "http_to_https_feedback-service-api"
    priority                    = 20
  },
  {
    name                       = "rule-feedback-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-feedback-service-api_https"
    backend_address_pool_name  = "bp-feedback-service-api"
    backend_http_settings_name = "bs-feedback-service-api"
    priority                   = 21
  },
  {
    name                        = "rule-ledger-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-ledger-api_http"
    redirect_configuration_name = "http_to_https_ledger-api"
    priority                    = 22
  },
  {
    name                       = "rule-ledger-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-ledger-api_https"
    backend_address_pool_name  = "bp-ledger-api"
    backend_http_settings_name = "bs-ledger-api"
    priority                   = 23
  },
  {
    name                        = "rule-ticket-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-ticket-service-api_http"
    redirect_configuration_name = "http_to_https_ticket-service-api"
    priority                    = 24
  },
  {
    name                       = "rule-ticket-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-ticket-service-api_https"
    backend_address_pool_name  = "bp-ticket-service-api"
    backend_http_settings_name = "bs-ticket-service-api"
    priority                   = 25
  },
  {
    name                        = "rule-datachain-http"
    rule_type                   = "Basic"
    http_listener_name          = "list-datachain_http"
    redirect_configuration_name = "http_to_https_datachain"
    priority                    = 26
  },
  {
    name                       = "rule-datachain_https"
    rule_type                  = "Basic"
    http_listener_name         = "list-datachain_https"
    backend_address_pool_name  = "bp-datachain"
    backend_http_settings_name = "bs-datachain"
    priority                   = 27
  }
]
health_probes = [
  {
    name                = "hp-address-service-api"
    host                = "address-service-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-document-service-api"
    host                = "document-service-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-document-service"
    host                = "document-service.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-notification-service"
    host                = "notification-service.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-notification-service-api"
    host                = "notification-service-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-feedback-service-api"
    host                = "feedback-service-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-ledger-api"
    host                = "ledger-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-ticket-service-api"
    host                = "ticket-service-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp-datachain"
    host                = "datachain.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  }
  ]
enable_private = true
