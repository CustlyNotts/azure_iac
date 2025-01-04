subscription_id     = <subscription_id>
name                = "appgw-hoapp-nonprod"
resource_group_name = "rg-appgw-nonprod"
subnet_id           = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-appgw-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-nonprod/subnets/snet-appgw-hoapp-nonprod"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags = {
  "env" : "Non PROD",
  "Application Name" : "Application Gateway",
  "Application Owner" : "Mohamed Nowphal"
}
#firewall_policy_id = null
public_ip_name     = "pip_appgw-hoapp_nonprod"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4new"
gateway_ip_configuration_name  = "private-appgw-hoapp"
private_ip_address = "10.48.3.20"
private_ip_address_allocation = "Static"


autoscale_configuration = {
  max_capacity = 5
  min_capacity = 1
}


backend_address_pools = [
  {
    name  = "bp_afe_uat"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_ghsemigapiuat"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_ghseapiuat2"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_ghseuat2"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_ghseapidev"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_ghsedev"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_ghseapiuat"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_ghseuat"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_pavillionemsdev"
    ip_addresses = ["10.48.0.37"]
  },
  {
    name  = "bp_pavillionemsapidev"
    ip_addresses = ["10.48.0.37"]
  },
  {
    name  = "bp_ispecqa"
    ip_addresses = ["10.253.4.15"]
  },
  {
    name  = "bp_securityappuat"
    ip_addresses = ["10.253.4.10"]
  },
  {
    name  = "bp_connexionsuat"
    ip_addresses = ["10.253.4.18"]
  },
  {
    name  = "bp_honodedev"
    ip_addresses = ["10.234.0.5", "10.234.0.105", "10.234.0.60"]
  },
  {
    name  = "bp_aaroleasedev"
    ip_addresses = ["10.253.8.5"]
  },
  {
    name  = "bp_dev-argus"
    ip_addresses = ["10.234.0.5", "10.234.0.21"]
  }
]
backend_http_settings = [
  {
    name                  = "bs_afe_uat"
    cookie_based_affinity = "Disabled"
    host_name             = "afemobileservicesuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
        port                =   80
    probe_name            = "hp_afe_uat"
  },
  {
    name                  = "bs_ghsemigapiuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ghsemigapiuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ghsemigapiuat"
  },
  {
    name                  = "bs_ghseapiuat2"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseapiuat2.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ghseapiuat2"
  },
  {
    name                  = "bs_ghseuat2"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseuat2.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ghseuat2"
  },
  {
    name                  = "bs_ghseapidev"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseapidev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ghseapidev"
  },
  {
    name                  = "bs_ghsedev"
    cookie_based_affinity = "Disabled"
    host_name             = "ghsedev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ghsedev"
  },
  {
    name                  = "bs_ghseapiuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseapiuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ghseapiuat"
  },
  {
    name                  = "bs_ghseuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ghseuat"
  },
  {
    name                  = "bs_pavillionemsdev"
    cookie_based_affinity = "Disabled"
    host_name             = "pavillionemsdev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    #probe_name            = ""
  },
  {
    name                  = "bs_pavillionemsapidev"
    cookie_based_affinity = "Disabled"
    host_name             = "pavillionemsapidev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_pavillionemsapidev"
  },
  {
    name                  = "bs_ispecqa"
    cookie_based_affinity = "Disabled"
    host_name             = "ispecqa.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_ispecqa"
  },
  {
    name                  = "bs_securityappuat"
    cookie_based_affinity = "Disabled"
    host_name             = "securityappuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    #probe_name            = "hp_securityappuat"
  },
  {
    name                  = "bs_connexionsuat"
    cookie_based_affinity = "Disabled"
    host_name             = "connexionsuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_connexionsuat"
  },
  {
    name                  = "bs_honodedev"
    cookie_based_affinity = "Disabled"
    host_name             = "honodedev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    #probe_name            = ""
  },
  {
    name                  = "bs_aaroleasedev"
    cookie_based_affinity = "Disabled"
    host_name             = "aaroleasedev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    #probe_name            = ""
  },
  {
    name                  = "bs_dev-argus"
    cookie_based_affinity = "Disabled"
    host_name             = "dev-argus.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port = 80
    probe_name            = "hp_dev-argus"
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "Cloudflare-Fullcert"
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/Cloudflare-Fullcert/e344bbc3222b443ab86f463249a23f4d"
  }
]
http_listeners = [
  {
    name        = "list_afe_uat_http"
    host_name   = "afemobileservicesuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_afe_uat_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "afemobileservicesuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghsemigapiuat_http"
    host_name   = "ghsemigapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghsemigapiuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghsemigapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghseapiuat2_http"
    host_name   = "ghseapiuat2.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghseapiuat2_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghseapiuat2.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghseuat2_http"
    host_name   = "ghseuat2.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghseuat2_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghseuat2.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghseapidev_http"
    host_name   = "ghseapidev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghseapidev_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghseapidev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghsedev_http"
    host_name   = "ghsedev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghsedev_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghsedev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghseapiuat_http"
    host_name   = "ghseapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghseapiuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghseapiuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ghseuat_http"
    host_name   = "ghseuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ghseuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ghseuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_pavillionemsdev_http"
    host_name   = "pavillionemsdev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_pavillionemsdev_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "pavillionemsdev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_pavillionemsapidev_http"
    host_name   = "pavillionemsapidev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_pavillionemsapidev_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "pavillionemsapidev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_ispecqa_http"
    host_name   = "ispecqa.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_ispecqa_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "ispecqa.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_securityappuat_http"
    host_name   = "afemobileservices.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_securityappuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "afemobileservices.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_connexionsuat_http"
    host_name   = "connexionsuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_connexionsuat_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "connexionsuat.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_honodedev_http"
    host_name   = "honodedev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_honodedev_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "honodedev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_aaroleasedev_http"
    host_name   = "aaroleasedev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_aaroleasedev_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "aaroleasedev.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name        = "list_dev-argus_http"
    host_name   = "dev-argus.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  },
  {
    name                 = "list_dev-argus_https"
    ssl_certificate_name = "Cloudflare-Fullcert"
    host_name            = "dev-argus.dpworld.com"
    frontend_ip_configuration_name  = "private_fip"
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_afeuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_afe_uat_https"
  },
  {
    name                 = "http_to_https_ghsemigapiuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghsemigapiuat_https"
  },
  {
    name                 = "http_to_https_ghseapiuat2"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghseapiuat2_https"
  },
  {
    name                 = "http_to_https_ghseuat2"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghseuat2_https"
  },
  {
    name                 = "http_to_https_ghseapidev"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghseapidev_https"
  },
  {
    name                 = "http_to_https_ghsedev"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghsedev_https"
  },
  {
    name                 = "http_to_https_ghseapiuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghseapiuat_https"
  },
  {
    name                 = "http_to_https_ghseuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_ghseuat_https"
  },
  {
    name                 = "http_to_https_pavillionemsdev"
    redirect_type        = "Permanent"
    target_listener_name = "list_pavillionemsdev_https"
  },
  {
    name                 = "http_to_https_pavillionemsapidev"
    redirect_type        = "Permanent"
    target_listener_name = "list_pavillionemsapidev_https"
  },
  {
    name                 = "http_to_https_securityappuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_securityappuat_https"
  },
  {
    name                 = "http_to_https_connexionsuat"
    redirect_type        = "Permanent"
    target_listener_name = "list_connexionsuat_https"
  },
  {
    name                 = "http_to_https_ispecqa"
    redirect_type        = "Permanent"
    target_listener_name = "list_ispecqa_https"
  },
  {
    name                 = "http_to_https_honodedev"
    redirect_type        = "Permanent"
    target_listener_name = "list_honodedev_https"
  },
  {
    name                 = "http_to_https_aaroleasedev"
    redirect_type        = "Permanent"
    target_listener_name = "list_aaroleasedev_https"
  },
  {
    name                 = "http_to_https_dev-argus"
    redirect_type        = "Permanent"
    target_listener_name = "list_dev-argus_https"
  }
]
request_routing_rules = [
  {
    name                        = "rule_afe_uat"
    rule_type                   = "Basic"
    http_listener_name          = "list_afe_uat_http"
    redirect_configuration_name = "http_to_https_afeuat"
    priority                    = 10
  },
  {
    name                       = "rule_afe_uat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_afe_uat_https"
    backend_address_pool_name  = "bp_afe_uat"
    backend_http_settings_name = "bs_afe_uat"
    priority                   = 11
  },
  {
    name                        = "rule_ghsemigapiuat_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghsemigapiuat_http"
    redirect_configuration_name = "http_to_https_ghsemigapiuat"
    priority                    = 12
  },
  {
    name                       = "rule_ghsemigapiuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghsemigapiuat_https"
    backend_address_pool_name  = "bp_ghsemigapiuat"
    backend_http_settings_name = "bs_ghsemigapiuat"
    priority                   = 13
  },
  {
    name                        = "rule_ghseapiuat2_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghseapiuat2_http"
    redirect_configuration_name = "http_to_https_ghseapiuat2"
    priority                    = 14
  },
  {
    name                       = "rule_ghseapiuat2_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghseapiuat2_https"
    backend_address_pool_name  = "bp_ghseapiuat2"
    backend_http_settings_name = "bs_ghseapiuat2"
    priority                   = 15
  },
  {
    name                        = "rule_ghseuat2_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghseuat2_http"
    redirect_configuration_name = "http_to_https_ghseuat2"
    priority                    = 16
  },
  {
    name                       = "rule_ghseuat2_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghseuat2_https"
    backend_address_pool_name  = "bp_ghseuat2"
    backend_http_settings_name = "bs_ghseuat2"
    priority                   = 17
  },
  {
    name                        = "rule_ghseapidev_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghseapidev_http"
    redirect_configuration_name = "http_to_https_ghseapidev"
    priority                    = 18
  },
  {
    name                       = "rule_ghseapidev_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghseapidev_https"
    backend_address_pool_name  = "bp_ghseapidev"
    backend_http_settings_name = "bs_ghseapidev"
    priority                   = 19
  },
  {
    name                        = "rule_ghsedev_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghsedev_http"
    redirect_configuration_name = "http_to_https_ghsedev"
    priority                    = 20
  },
  {
    name                       = "rule_ghsedev_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghsedev_https"
    backend_address_pool_name  = "bp_ghsedev"
    backend_http_settings_name = "bs_ghsedev"
    priority                   = 21
  },
  {
    name                        = "rule_ghseapiuat_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghseapiuat_http"
    redirect_configuration_name = "http_to_https_ghseapiuat"
    priority                    = 22
  },
  {
    name                       = "rule_ghseapiuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghseapiuat_https"
    backend_address_pool_name  = "bp_ghseapiuat"
    backend_http_settings_name = "bs_ghseapiuat"
    priority                   = 23
  },
  {
    name                        = "rule_ghseuat_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ghseuat_http"
    redirect_configuration_name = "http_to_https_ghseuat"
    priority                    = 24
  },
  {
    name                       = "rule_ghseuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ghseuat_https"
    backend_address_pool_name  = "bp_ghseuat"
    backend_http_settings_name = "bs_ghseuat"
    priority                   = 25
  },
  {
    name                        = "rule_pavillionemsdev_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_pavillionemsdev_http"
    redirect_configuration_name = "http_to_https_pavillionemsdev"
    priority                    = 26
  },
  {
    name                       = "rule_pavillionemsdev_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_pavillionemsdev_https"
    backend_address_pool_name  = "bp_pavillionemsdev"
    backend_http_settings_name = "bs_pavillionemsdev"
    priority                   = 27
  },
  {
    name                        = "rule_pavillionemsapidev_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_pavillionemsapidev_http"
    redirect_configuration_name = "http_to_https_pavillionemsapidev"
    priority                    = 28
  },
  {
    name                       = "rule_pavillionemsapidev_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_pavillionemsapidev_https"
    backend_address_pool_name  = "bp_pavillionemsapidev"
    backend_http_settings_name = "bs_pavillionemsapidev"
    priority                   = 29
  },
  {
    name                        = "rule_ispecqa_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_ispecqa_http"
    redirect_configuration_name = "http_to_https_ispecqa"
    priority                    = 30
  },
  {
    name                       = "rule_ispecqa_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_ispecqa_https"
    backend_address_pool_name  = "bp_ispecqa"
    backend_http_settings_name = "bs_ispecqa"
    priority                   = 31
  },
  {
    name                        = "rule_securityappuat_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_securityappuat_http"
    redirect_configuration_name = "http_to_https_securityappuat"
    priority                    = 32
  },
  {
    name                       = "rule_securityappuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_securityappuat_https"
    backend_address_pool_name  = "bp_securityappuat"
    backend_http_settings_name = "bs_securityappuat"
    priority                   = 33
  },
  {
    name                        = "rule_connexionsuat_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_connexionsuat_http"
    redirect_configuration_name = "http_to_https_connexionsuat"
    priority                    = 34
  },
  {
    name                       = "rule_connexionsuat_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_connexionsuat_https"
    backend_address_pool_name  = "bp_connexionsuat"
    backend_http_settings_name = "bs_connexionsuat"
    priority                   = 35
  },
  {
    name                        = "rule_honodedev_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_honodedev_http"
    redirect_configuration_name = "http_to_https_honodedev"
    priority                    = 36
  },
  {
    name                       = "rule_honodedev_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_honodedev_https"
    backend_address_pool_name  = "bp_honodedev"
    backend_http_settings_name = "bs_honodedev"
    priority                   = 37
  },
  {
    name                        = "rule_aaroleasedev_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_aaroleasedev_http"
    redirect_configuration_name = "http_to_https_aaroleasedev"
    priority                    = 38
  },
  {
    name                       = "rule_aaroleasedev_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_aaroleasedev_https"
    backend_address_pool_name  = "bp_aaroleasedev"
    backend_http_settings_name = "bs_aaroleasedev"
    priority                   = 39
  },
  {
    name                        = "rule_dev-argus_http"
    rule_type                   = "Basic"
    http_listener_name          = "list_dev-argus_http"
    redirect_configuration_name = "http_to_https_dev-argus"
    priority                    = 40
  },
  {
    name                       = "rule_dev-argus_https"
    rule_type                  = "Basic"
    http_listener_name         = "list_dev-argus_https"
    backend_address_pool_name  = "bp_dev-argus"
    backend_http_settings_name = "bs_dev-argus"
    priority                   = 41
  }
]

health_probes = [
  {
    name                = "hp_afe_uat"
    host                = "afemobileservicesuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/a.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghsemigapiuat"
    host                = "ghsemigapiuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/ping/get"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghseapiuat2"
    host                = "ghseapiuat2.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/ping/get"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghseuat2"
    host                = "ghseuat2.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/silent-refresh.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghseapidev"
    host                = "ghseapidev.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/ping/get"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghsedev"
    host                = "ghsedev.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/silent-refresh.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghseapiuat"
    host                = "ghseapiuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/ping/get"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_ghseuat"
    host                = "ghseuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/silent-refresh.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp_ispecqa"
    host                = "ispecqa.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/content/site.css"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp_pavillionemsapidev"
    host                = "pavillionemsapidev.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/swagger/index.html"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_connexionsuat"
    host                = "connexionsuat.dpworld.com"
    interval            = 180
    protocol            = "Http"
    path                = "/_layouts/blank.htm"
    timeout             = 180
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }
  },
  {
    name                = "hp_dev-argus"
    host                = "dev-argus.dpworld.com"
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
