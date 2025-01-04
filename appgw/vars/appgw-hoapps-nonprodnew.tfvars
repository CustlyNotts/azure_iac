subscription_id     = <subscription_id>
name                = "appgw-hoapps-nonprodnew"
resource_group_name = "rg-appgw-nonprod"
subnet_id           = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-appgw-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-appgw-nonprod/subnets/snet-appgw-nonprodtest"
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
public_ip_name     = "pip_appgw-hoapps_nonprodnew"
enable_http2 = false


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4new"
gateway_ip_configuration_name  = "private-appgw-hoappsnew"
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
    port                  = 80
    probe_name            = "hp_afe_uat"
  },
  {
    name                  = "bs_ghsemigapiuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ghsemigapiuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ghsemigapiuat"
  },
  {
    name                  = "bs_ghseapiuat2"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseapiuat2.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ghseapiuat2"
  },
  {
    name                  = "bs_ghseuat2"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseuat2.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ghseuat2"
  },
  {
    name                  = "bs_ghseapidev"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseapidev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ghseapidev"
  },
  {
    name                  = "bs_ghsedev"
    cookie_based_affinity = "Disabled"
    host_name             = "ghsedev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ghsedev"
  },
  {
    name                  = "bs_ghseapiuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseapiuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ghseapiuat"
  },
  {
    name                  = "bs_ghseuat"
    cookie_based_affinity = "Disabled"
    host_name             = "ghseuat.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    probe_name            = "hp_ghseuat"
  },
  {
    name                  = "bs_pavillionemsdev"
    cookie_based_affinity = "Disabled"
    host_name             = "pavillionemsdev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    #probe_name            = ""
  },
  {
    name                  = "bs_pavillionemsapidev"
    cookie_based_affinity = "Disabled"
    host_name             = "pavillionemsapidev.dpworld.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    port                  = 80
    #probe_name            = "hp_afe_uat"
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
    name                        = "rule_ghseuat2_https"
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

  }
]
enable_private = true
