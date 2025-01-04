subscription_id     = <subscription_id>
name                = "appgw-sharedapps-nonprod"
resource_group_name = "cargoes-staging"
subnet_id           = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/vnet-appgw-foundation-nonprod/subnets/snet-appgw-foundation-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags =  {
  "Application Name" : "Sharedapps Noprod",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "NonProd"
}
#firewall_policy_id = null
public_ip_name     = "pip_sharedapps-nonprod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "private-appgw-sharedapps-nonprod"
private_ip_address = "10.48.11.135"
private_ip_address_allocation = "Static"

autoscale_configuration = {
  max_capacity = 3
  min_capacity = 1
}
backend_address_pools = [
  {
    name  = "bp-qa-address-service"
    ip_addresses = ["10.240.224.227"] // ingress IP
  },
  {
    name  = "bp-staging-address-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-notification-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-notification-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-notification-service"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-document-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-document-service"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-document-service"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-document-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-ticket-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-ticket-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-feedback-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-feedback-service-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-auth-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-ledger-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-notification-service"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-datachain"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-datachain-dapp"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_staging-datachain-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-datachain-dapp-api"
    ip_addresses = ["10.240.224.227"]
  },
  {
    name  = "bp_qa-address-service-api"
    ip_addresses = ["10.240.224.227"] // ingress IP
  }
]
backend_http_settings = [
  {
    name                  = "bs-qa-address-service"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-address-service.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa-address-service" //Server Pool
  },
  {
    name                  = "bs_staging-address-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-address-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging-address-service-api"
  },
  {
    name                  = "bs_staging-notification-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-notification-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging-notification-service-api"
  },
  {
    name                  = "bs_qa-notification-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-notification-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa-notification-service-api"
  },
  {
    name                  = "bs_qa-notification-service"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-notification-service.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa-notification-service"
  },
  {
    name                  = "bs_staging-document-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-document-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_staging-document-service-api"
  },
  {
    name                  = "bs_staging-document-service"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-document-service.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-document-service"
  },
  {
    name                  = "bs_qa-document-service"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-document-service.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_qa-document-service"
  },
  {
    name                  = "bs_qa-document-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-document-service-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_qa-document-service-api"
  },
  {
    name                  = "bs_staging-ticket-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-ticket-service-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-ticket-service-api"
  },
  {
    name                  = "bs_qa-ticket-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-ticket-service-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_qa-ticket-service-api"
  },
  {
    name                  = "bs_qa-feedback-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-feedback-service-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_qa-feedback-service-api"
  },
  {
    name                  = "bs_staging-feedback-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-feedback-service-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-feedback-service-api"
  },
  {
    name                  = "bs_staging-auth-api"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-staging-auth-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-auth-api"
  },
  {
    name                  = "bs_staging-ledger-api"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-ledger-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-ledger-api"
  },
  {
    name                  = "bs_staging-notification-service"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-notification-service.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-notification-service"
  },
  {
    name                  = "bs_staging-datachain"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-datachain.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-datachain"
  },
  {
    name                  = "bs_qa-datachain-dapp"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-datachain-dapp.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_qa-datachain-dapp"
  },
  {
    name                  = "bs_staging-datachain-api"
    cookie_based_affinity = "Disabled"
    host_name             = "staging-datachain-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_staging-datachain-api"
  },
  {
    name                  = "bs_qa-datachain-dapp-api"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-datachain-dapp-api.cargoes.com"
    path                  = ""
    port                  = 80
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp_qa-datachain-dapp-api"
  },
  {
    name                  = "bs_qa-address-service-api"
    cookie_based_affinity = "Disabled"
    host_name             = "qa-address-service-api.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_qa-address--api" //Server Pool
  }
]
key_vault_subscription_id     = "3ddf2459-a8f6-4f71-9fa4-9b3479dbf234"
key_vault_resource_group_name = "cargoes-staging"
key_vault_name                = "kv-foundation-nonprod"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert-Cargoes1"
    key_vault_secret_id = "https://kv-foundation-nonprod.vault.azure.net/secrets/Cloudflare-Fullcert-Cargoes1/38c95920f7f041f39b01826533e56b86"
  } // SSL Certificate Details
]
http_listeners = [
  {
    name        = "list_qa-address-service_http"
    host_name   = "qa-address-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }, //Virtual Server
  {
    name                 = "list_qa-address-service_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-address-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-address-service-api_http"
    host_name   = "staging-address-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-address-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-address-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-notification-service-api_http"
    host_name   = "staging-notification-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-notification-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-notification-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-notification-service-api_http"
    host_name   = "qa-notification-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-notification-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-notification-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-notification-service_http"
    host_name   = "qa-notification-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-notification-service_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-notification-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-document-service-api_http"
    host_name   = "staging-document-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-document-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-document-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-document-service_http"
    host_name   = "staging-document-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-document-service_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-document-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-document-service_http"
    host_name   = "qa-document-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-document-service_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-document-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-document-service-api_http"
    host_name   = "qa-document-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-document-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-document-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-ticket-service-api_http"
    host_name   = "staging-ticket-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-ticket-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-ticket-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-ticket-service-api_http"
    host_name   = "qa-ticket-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-ticket-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-ticket-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-feedback-service-api_http"
    host_name   = "qa-feedback-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-feedback-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-feedback-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-feedback-service-api_http"
    host_name   = "staging-feedback-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-feedback-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-feedback-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-auth-api_http"
    host_name   = "staging-auth-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-auth-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-auth-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-ledger-api_http"
    host_name   = "staging-ledger-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-ledger-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-ledger-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-notification-service_http"
    host_name   = "staging-notification-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-notification-service_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-notification-service.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-datachain_http"
    host_name   = "staging-datachain.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-datachain_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-datachain.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-datachain-dapp_http"
    host_name   = "qa-datachain-dapp.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_qa-datachain-dapp_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-datachain-dapp.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_staging-datachain-api_http"
    host_name   = "staging-datachain-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_staging-datachain-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "staging-datachain-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_qa-datachain-dapp-api_http"
    host_name   = "qa-datachain-dapp-api.cargoes.com"
    frontend_ip_configuration_name = "private_fip"
  },
  {
    name                 = "list_qa-datachain-dapp-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-datachain-dapp-api.cargoes.com"
    frontend_ip_configuration_name = "private_fip"
  },
  {
    name        = "list_qa-address-service-api_http"
    host_name   = "qa-address-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  }
  {
    name                 = "list_qa-address-service-api_https"
    ssl_certificate_name = "Cloudflare-Fullcert-Cargoes1"
    host_name            = "qa-address-service-api.cargoes.com"
    frontend_ip_configuration_name  = "private_fip"
  },
]
redirect_configuration = [
  {
    name                 = "http_to_https_qa-address-service"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-address-service_https"
  },
  {
    name                 = "http_to_https_staging-address-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-address-service-api_https"
  },
  {
    name                 = "http_to_https_staging-notification-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-notification-service-api_https"
  },
  {
    name                 = "http_to_https_qa-notification-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-notification-service-api_https"
  },
  {
    name                 = "http_to_https_qa-notification-service"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-notification-service_https"
  },
  {
    name                 = "http_to_https_staging-document-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-document-service-api_https"
  },
  {
    name                 = "http_to_https_staging-document-service"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-document-service_https"
  },
  {
    name                 = "http_to_https_qa-document-service"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-document-service_https"
  },
  {
    name                 = "http_to_https_qa-document-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-document-service-api_https"
  },
  {
    name                 = "http_to_https_staging-ticket-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-ticket-service-api_https"
  },
  {
    name                 = "http_to_https_qa-ticket-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-ticket-service-api_https"
  },
  {
    name                 = "http_to_https_qa-feedback-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-feedback-service-api_https"
  },
  {
    name                 = "http_to_https_staging-feedback-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-feedback-service-api_https"
  },
  {
    name                 = "http_to_https_staging-auth-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-auth-api_https"
  },
  {
    name                 = "http_to_https_staging-ledger-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-ledger-api_https"
  },
  {
    name                 = "http_to_https_staging-notification-service"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-notification-service_https"
  },
  {
    name                 = "http_to_https_staging-datachain"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-datachain_https"
  },
  {
    name                 = "http_to_https_qa-datachain-dapp"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-datachain-dapp_https"
  },
  {
    name                 = "http_to_https_staging-datachain-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_staging-datachain-api_https"
  },
  {
    name                 = "http_to_https_qa-datachain-dapp-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-datachain-dapp-api_https"
  },
  {
    name                 = "http_to_https_qa-address-service-api"
    redirect_type        = "Permanent"
    target_listener_name = "list_qa-address-service-api_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_qa-address-service-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-address-service_http"
    redirect_configuration_name = "http_to_https_qa-address-service"
    priority                    = 10
  },
  {
    name                       = "rule_qa-address-service_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-address-service_https"
    backend_address_pool_name  = "bp-qa-address-service"
    backend_http_settings_name = "bs-qa-address-service"
    priority                   = 11
  },
  {
    name                        = "rule_staging-address-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-address-service-api_http"
    redirect_configuration_name = "http_to_https_staging-address-service-api"
    priority                    = 12
  },
  {
    name                       = "rule_staging-address-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-address-service-api_https"
    backend_address_pool_name  = "bp-staging-address-service-api"
    backend_http_settings_name = "bs_staging-address-service-api"
    priority                   = 13
  },
  {
    name                        = "rule_staging-notification-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-notification-service-api_http"
    redirect_configuration_name = "http_to_https_staging-notification-service-api"
    priority                    = 14
  },
  {
    name                       = "rule_staging-notification-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-notification-service-api_https"
    backend_address_pool_name  = "bp_staging-notification-service-api"
    backend_http_settings_name = "bs_staging-notification-service-api"
    priority                   = 15
  },
   {
    name                        = "rule_qa-notification-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-notification-service-api_http"
    redirect_configuration_name = "http_to_https_qa-notification-service-api"
    priority                    = 16
  },
  {
    name                       = "rule_qa-notification-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-notification-service-api_https"
    backend_address_pool_name  = "bp_qa-notification-service-api"
    backend_http_settings_name = "bs_qa-notification-service-api"
    priority                   = 17
  },
  {
    name                        = "rule_qa-notification-service-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-notification-service_http"
    redirect_configuration_name = "http_to_https_qa-notification-service"
    priority                    = 18
  },
  {
    name                       = "rule_qa-notification-service_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-notification-service_https"
    backend_address_pool_name  = "bp_qa-notification-service"
    backend_http_settings_name = "bs_qa-notification-service"
    priority                   = 19
  },
  {
    name                        = "rule_staging-document-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-document-service-api_http"
    redirect_configuration_name = "http_to_https_staging-document-service-api"
    priority                    = 20
  },
  {
    name                       = "rule_staging-document-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-document-service-api_https"
    backend_address_pool_name  = "bp_staging-document-service-api"
    backend_http_settings_name = "bs_staging-document-service-api"
    priority                   = 21
  },
  {
    name                        = "rule_staging-document-service-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-document-service_http"
    redirect_configuration_name = "http_to_https_staging-document-service"
    priority                    = 22
  },
  {
    name                       = "rule_staging-document-service_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-document-service_https"
    backend_address_pool_name  = "bp_staging-document-service"
    backend_http_settings_name = "bs_staging-document-service"
    priority                   = 23
  },
  {
    name                        = "rule_qa-document-service-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-document-service_http"
    redirect_configuration_name = "http_to_https_qa-document-service"
    priority                    = 24
  },
  {
    name                       = "rule_qa-document-service_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-document-service_https"
    backend_address_pool_name  = "bp_qa-document-service"
    backend_http_settings_name = "bs_qa-document-service"
    priority                   = 25
  },
  {
    name                        = "rule_qa-document-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-document-service-api_http"
    redirect_configuration_name = "http_to_https_qa-document-service-api"
    priority                    = 26
  },
  {
    name                       = "rule_qa-document-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-document-service-api_https"
    backend_address_pool_name  = "bp_qa-document-service-api"
    backend_http_settings_name = "bs_qa-document-service-api"
    priority                   = 27
  },
  {
    name                        = "rule_staging-ticket-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-ticket-service-api_http"
    redirect_configuration_name = "http_to_https_staging-ticket-service-api"
    priority                    = 28
  },
  {
    name                       = "rule_staging-ticket-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-ticket-service-api_https"
    backend_address_pool_name  = "bp_staging-ticket-service-api"
    backend_http_settings_name = "bs_staging-ticket-service-api"
    priority                   = 29
  },
  {
    name                        = "rule_qa-ticket-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-ticket-service-api_http"
    redirect_configuration_name = "http_to_https_qa-ticket-service-api"
    priority                    = 30
  },
  {
    name                       = "rule_qa-ticket-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-ticket-service-api_https"
    backend_address_pool_name  = "bp_qa-ticket-service-api"
    backend_http_settings_name = "bs_qa-ticket-service-api"
    priority                   = 31
  },
  {
    name                        = "rule_qa-feedback-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-feedback-service-api_http"
    redirect_configuration_name = "http_to_https_qa-feedback-service-api"
    priority                    = 32
  },
  {
    name                       = "rule_qa-feedback-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-feedback-service-api_https"
    backend_address_pool_name  = "bp_qa-feedback-service-api"
    backend_http_settings_name = "bs_qa-feedback-service-api"
    priority                   = 33
  },
  {
    name                        = "rule_staging-feedback-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-feedback-service-api_http"
    redirect_configuration_name = "http_to_https_staging-feedback-service-api"
    priority                    = 34
  },
  {
    name                       = "rule_staging-feedback-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-feedback-service-api_https"
    backend_address_pool_name  = "bp_staging-feedback-service-api"
    backend_http_settings_name = "bs_staging-feedback-service-api"
    priority                   = 35
  },
  {
    name                        = "rule_staging-auth-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-auth-api_http"
    redirect_configuration_name = "http_to_https_staging-auth-api"
    priority                    = 36
  },
  {
    name                       = "rule_staging-auth-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-auth-api_https"
    backend_address_pool_name  = "bp_staging-auth-api"
    backend_http_settings_name = "bs_staging-auth-api"
    priority                   = 37
  },
 {
    name                        = "rule_staging-ledger-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-ledger-api_http"
    redirect_configuration_name = "http_to_https_staging-ledger-api"
    priority                    = 38
  },
  {
    name                       = "rule_staging-ledger-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-ledger-api_https"
    backend_address_pool_name  = "bp_staging-ledger-api"
    backend_http_settings_name = "bs_staging-ledger-api"
    priority                   = 39
  },
  {
    name                        = "rule_staging-notification-service-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-notification-service_http"
    redirect_configuration_name = "http_to_https_staging-notification-service"
    priority                    = 40
  },
  {
    name                       = "rule_staging-notification-service_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-notification-service_https"
    backend_address_pool_name  = "bp_staging-notification-service"
    backend_http_settings_name = "bs_staging-notification-service"
    priority                   = 41
  },
  {
    name                        = "rule_staging-datachain-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-datachain_http"
    redirect_configuration_name = "http_to_https_staging-datachain-dapp"
    priority                    = 42
  },
  {
    name                       = "rule_staging-datachain_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-datachain_https"
    backend_address_pool_name  = "bp_staging-datachain"
    backend_http_settings_name = "bs_staging-datachain"
    priority                   = 43
  },
  {
    name                        = "rule_qa-datachain-dapp-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-datachain-dapp_http"
    redirect_configuration_name = "http_to_https_qa-datachain-dapp"
    priority                    = 44
  },
  {
    name                       = "rule_qa-datachain-dapp_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-datachain-dapp_https"
    backend_address_pool_name  = "bp_qa-datachain-dapp"
    backend_http_settings_name = "bs_qa-datachain-dapp"
    priority                   = 45
  },
  {
    name                        = "rule_staging-datachain-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_staging-datachain-api_http"
    redirect_configuration_name = "http_to_https_staging-datachain-api"
    priority                    = 46
  },
  {
    name                       = "rule_staging-datachain-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_staging-datachain-api_https"
    backend_address_pool_name  = "bp_staging-datachain-api"
    backend_http_settings_name = "bs_staging-datachain-api"
    priority                   = 47
  },
  {
    name                        = "rule_qa-datachain-dapp-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-datachain-dapp-api_http"
    redirect_configuration_name = "http_to_https_qa-datachain-dapp-api"
    priority                    = 48
  },
  {
    name                       = "rule_qa-datachain-dapp-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-datachain-dapp-api_https"
    backend_address_pool_name  = "bp_qa-datachain-dapp-api"
    backend_http_settings_name = "bs_qa-datachain-dapp-api"
    priority                   = 49
  },
  {
    name                        = "rule_qa-address-service-api-http"
    rule_type                   = "Basic"
    http_listener_name          = "list_qa-address-service-api_http"
    redirect_configuration_name = "http_to_https_qa-address-service-api"
    priority                    = 52
  },
  {
    name                       = "rule_qa-address-service-api_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_qa-address-service-api_https"
    backend_address_pool_name  = "bp_qa-address-service-api"
    backend_http_settings_name = "bs_qa-address-service-api"
    priority                   = 53
  }
]
health_probes = [
  {
    name                = "hp_qa-address-service"
    host                = "qa-address-service.cargoes.com"
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
    name                = "hp_staging-address-service-api"
    host                = "staging-address-service-api.cargoes.com"
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
    name                = "hp_staging-notification-service-api"
    host                = "staging-notification-service-api.cargoes.com"
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
    name                = "hp_qa-notification-service-api"
    host                = "qa-notification-service-api.cargoes.com"
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
    name                = "hp_qa-notification-service"
    host                = "qa-notification-service.cargoes.com"
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
    name                = "hp_staging-document-service-api"
    host                = "staging-document-service-api.cargoes.com"
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
    name                = "hp_staging-document-service"
    host                = "staging-document-service.cargoes.com"
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
    name                = "hp_qa-document-service"
    host                = "qa-document-service.cargoes.com"
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
    name                = "hp_qa-document-service-api"
    host                = "qa-document-service-api.cargoes.com"
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
    name                = "hp_staging-ticket-service-api"
    host                = "staging-ticket-service-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/api/aboutme"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_qa-ticket-service-api"
    host                = "qa-ticket-service-api.cargoes.com"
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
    name                = "hp_qa-feedback-service-api"
    host                = "qa-feedback-service-api.cargoes.com"
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
    name                = "hp_staging-feedback-service-api"
    host                = "staging-feedback-service-api.cargoes.com"
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
    name                = "hp_staging-auth-api.cargoes.com"
    host                = "staging-auth-api.cargoes.com"
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
    name                = "hp_staging-ledger-api.cargoes.com"
    host                = "staging-ledger-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/api/v1/aboutme"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_staging-notification-service.cargoes.com"
    host                = "staging-notification-service.cargoes.com"
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
    name                = "hp_staging-datachain.cargoes.com"
    host                = "staging-datachain.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/login"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_qa-datachain-dapp.cargoes.com"
    host                = "qa-datachain-dapp.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/login"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_staging-datachain-api.cargoes.com"
    host                = "staging-datachain-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/api/aboutme"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_qa-datachain-dapp-api.cargoes.com"
    host                = "qa-datachain-dapp-api.cargoes.com"
    interval            = 10
    protocol            = "Http"
    path                = "/api/aboutme"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
    status_code = ["200-399"]
  }
  },
  {
    name                = "hp_qa-address-service-api"
    host                = "qa-address-service-api.cargoes.com"
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
