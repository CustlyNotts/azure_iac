subscription_id     = <subscription_id>
name                = "appgw-ecommerce-prod"
resource_group_name = "Rg-appgw-prod"
subnet_id           = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub/subnets/app_gateway"
sku = {
  name     = "WAF_v2"
  tier     = "WAF_v2"
  capacity = 1
}


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIp"
gateway_ip_configuration_name  = "appGatewayIpConfig"

firewall_policy_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/Rg-appgw-prod/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/ecomm-waf"
backend_address_pools = [
  {
    name         = "dubuy-container-prod"
    ip_addresses = ["10.165.104.11"]
  },
  {
    name         = "dubuypreprod"
    ip_addresses = ["10.254.5.51"]
  },
  {
    name         = "dm-seller"
    ip_addresses = ["10.254.5.52"]
  },
  {
    name         = "dm-admin"
    ip_addresses = ["10.254.5.52"]
  },
  {
    name         = "dragonmart"
    ip_addresses = ["10.254.5.52"]
  },
  {
    name         = "dubuy-vm-prod"
    ip_addresses = ["10.165.106.16", "10.165.106.14"]
  }
]
backend_http_settings = [
  {
    name                  = "dubuy-container"
    cookie_based_affinity = "Disabled"
    path                  = ""
    enable_https          = false
    request_timeout       = 30
    probe_name            = "health-check-dubuy-container"
  },
  {
    name                  = "dubuypreprod"
    cookie_based_affinity = "Disabled"
    path                  = "/"
    enable_https          = true
    request_timeout       = 30
    probe_name            = "health-check-preprod"
  },
  {
    name                  = "dm-seller"
    cookie_based_affinity = "Disabled"
    path                  = "/"
    enable_https          = true
    request_timeout       = 30
    probe_name            = "health-check-dm-seller"
  },
  {
    name                  = "dm-admin"
    cookie_based_affinity = "Disabled"
    path                  = "/"
    enable_https          = true
    request_timeout       = 30
    probe_name            = "health-check-dm-admin"
  },
  {
    name                  = "dragonmart"
    cookie_based_affinity = "Disabled"
    path                  = "/"
    enable_https          = true
    request_timeout       = 30
    probe_name            = "health-check-dragonmart"
  },
  {
    name                  = "dubuy-vm"
    cookie_based_affinity = "Disabled"
    path                  = ""
    enable_https          = false
    request_timeout       = 20
    probe_name            = "health-check-dubuy-vm"
  }
]
http_listeners = [
  {
    name      = "dubuy-http"
    host_name = "www.dubuy.com"
  },
  {
    name                 = "dubuy-https"
    ssl_certificate_name = "dubuy"
    host_name            = "www.dubuy.com"
  },
  {
    name      = "dubuypreprod-http"
    host_name = "preprod.dubuy.com"
  },
  {
    name                 = "dubuypreprod-https"
    ssl_certificate_name = "dubuy"
    host_name            = "preprod.dubuy.com"
  },
  {
    name      = "dm-seller-http"
    host_name = "seller.dragonmart.ae"
  },
  {
    name                 = "dm-seller-https"
    ssl_certificate_name = "dragonmart"
    host_name            = "seller.dragonmart.ae"
  },
  {
    name      = "dm-admin-http"
    host_name = "admin.dragonmart.ae"
  },
  {
    name                 = "dm-admin-https"
    ssl_certificate_name = "dragonmart"
    host_name            = "admin.dragonmart.ae"
  },
  {
    name      = "dragonmart-http"
    host_name = "www.dragonmart.ae"
  },
  {
    name                 = "dragonmart-https"
    ssl_certificate_name = "dragonmart"
    host_name            = "www.dragonmart.ae"
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "dubuy"
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/dubuy/35a0a1bf8862412989867fee7115f756"
  },
  {
    name                = "dragonmart"
    key_vault_secret_id = "https://kv- .vault.azure.net/secrets/dragonmart/d763be000aa74260b81cfe5ab9cb3883"
  }
]
request_routing_rules = [
  {
    name                        = "dubuy-http"
    rule_type                   = "Basic"
    http_listener_name          = "dubuy-http"
    redirect_configuration_name = "http_to_https_dubuy"
    priority                    = 20
  },
  {
    name                       = "dubuypreprod-https"
    rule_type                  = "Basic"
    http_listener_name         = "dubuypreprod-https"
    backend_address_pool_name  = "dubuypreprod"
    backend_http_settings_name = "dubuypreprod"
    priority                   = 30
  },
  {
    name                        = "dubuypreprod-http"
    rule_type                   = "Basic"
    http_listener_name          = "dubuypreprod-http"
    redirect_configuration_name = "http_to_https_dubuypreprod"
    priority                    = 40
  },
  {
    name                       = "dm-seller-https"
    rule_type                  = "Basic"
    http_listener_name         = "dm-seller-https"
    backend_address_pool_name  = "dm-seller"
    backend_http_settings_name = "dm-seller"
    priority                   = 50
  },
  {
    name                        = "dm-seller-http"
    rule_type                   = "Basic"
    http_listener_name          = "dm-seller-http"
    redirect_configuration_name = "http_to_https_dm-seller"
    priority                    = 60
  },
  {
    name                       = "dm-admin-https"
    rule_type                  = "Basic"
    http_listener_name         = "dm-admin-https"
    backend_address_pool_name  = "dm-admin"
    backend_http_settings_name = "dm-admin"
    priority                   = 70
  },
  {
    name                        = "dm-admin-http"
    rule_type                   = "Basic"
    http_listener_name          = "dm-admin-http"
    redirect_configuration_name = "http_to_https_dm-admin"
    priority                    = 80
  },
  {
    name                       = "dragonmart-https"
    rule_type                  = "Basic"
    http_listener_name         = "dragonmart-https"
    backend_address_pool_name  = "dragonmart"
    backend_http_settings_name = "dragonmart"
    priority                   = 100
  },
  {
    name                        = "dragonmart-http"
    rule_type                   = "Basic"
    http_listener_name          = "dragonmart-http"
    redirect_configuration_name = "http_to_https_dragonmart"
    priority                    = 110
  },
  {
    name               = "dubuy-rewrite-https"
    rule_type          = "PathBasedRouting"
    http_listener_name = "dubuy-https"
    url_path_map_name  = "dubuy-rewrite-https"
    priority           = 150
  }
]
health_probes = [
  {
    name                = "health-check-dubuy-vm"
    host                = "www.dubuy.com"
    interval            = 30
    path                = "/health-check"
    protocol            = "Http"
    port                = 80
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "health-check-preprod"
    host                = "preprod.dubuy.com"
    interval            = 30
    path                = "/health-check"
    port                = 443
    protocol            = "Https"
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "health-check-dm-seller"
    host                = "seller.dragonmart.ae"
    interval            = 30
    path                = "/index.html"
    port                = 443
    protocol            = "Https"
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "health-check-dm-admin"
    host                = "admin.dragonmart.ae"
    interval            = 30
    path                = "/health-check"
    port                = 443
    protocol            = "Https"
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "health-check-dragonmart"
    host                = "www.dragonmart.ae"
    interval            = 30
    path                = "/health-check"
    port                = 443
    protocol            = "Https"
    timeout             = 30
    unhealthy_threshold = 3
  },
  {
    name                = "health-check-dubuy-container"
    host                = "www.dubuy.com"
    interval            = 30
    path                = "/api/v2/health"
    port                = 80
    timeout             = 30
    protocol            = "Http"
    unhealthy_threshold = 3
  }
]
redirect_configuration = [
  {
    name                 = "http_to_https_dubuy"
    redirect_type        = "Permanent"
    target_listener_name = "dubuy-https"
  },
  {
    name                 = "http_to_https_dubuypreprod"
    redirect_type        = "Permanent"
    target_listener_name = "dubuypreprod-https"
  },
  {
    name                 = "http_to_https_dm-seller"
    redirect_type        = "Permanent"
    target_listener_name = "dm-seller-https"
  },
  {
    name                 = "http_to_https_dm-admin"
    redirect_type        = "Permanent"
    target_listener_name = "dm-admin-https"
  },
  {
    name                 = "http_to_https_dragonmart"
    redirect_type        = "Permanent"
    target_listener_name = "dragonmart-https"
  }
]
url_path_maps = [
  {
    name                               = "dubuy-rewrite-https"
    default_backend_address_pool_name  = "dubuy-container-prod"
    default_backend_http_settings_name = "dubuy-container"
    path_rules = [
      {
        name = "Dubuy-vm-rewrite"
        paths = [
          "/ae-en/onepagecheckout",
          "/checkout/OpcSaveShipping",
          "/ae-en/cart",
          "/ae-en/register",
          "/ae-en/getuserdata",
          "/ae-en/getheadershipto",
          "/ae-en/order/history",
          "/ae-en/customer/info",
          "/ae-en/customer/addresses",
          "/ae-en/wishlist",
          "/ae-en/orderdetails/19828",
          "/gh-en/onepagecheckout",
          "/gh-en/cart",
          "/gh-en/register",
          "/gh-en/getuserdata",
          "/gh-en/getheadershipto",
          "/gh-en/order/history",
          "/gh-en/customer/info",
          "/gh-en/customer/addresses",
          "/gh-en/wishlist",
          "/gh-en/orderdetails/19828",
          "/ke-en/onepagecheckout",
          "/ke-en/cart",
          "/ke-en/register",
          "/ke-en/getuserdata",
          "/ke-en/getheadershipto",
          "/ke-en/order/history",
          "/ke-en/customer/info",
          "/ke-en/customer/addresses",
          "/ke-en/wishlist",
          "/ke-en/orderdetails/19828",
          "/rw-en/onepagecheckout",
          "/rw-en/cart",
          "/rw-en/register",
          "/rw-en/getuserdata",
          "/rw-en/getheadershipto",
          "/rw-en/order/history",
          "/rw-en/customer/info",
          "/rw-en/customer/addresses",
          "/rw-en/wishlist",
          "/rw-en/orderdetails/19828",
          "/tz-en/onepagecheckout",
          "/tz-en/cart",
          "/tz-en/register",
          "/tz-en/getuserdata",
          "/tz-en/getheadershipto",
          "/tz-en/order/history",
          "/tz-en/customer/info",
          "/tz-en/customer/addresses",
          "/tz-en/wishlist",
          "/tz-en/orderdetails/19828",
          "/tn-en/onepagecheckout",
          "/tn-en/cart",
          "/tn-en/register",
          "/tn-en/getuserdata",
          "/tn-en/getheadershipto",
          "/tn-en/order/history",
          "/tn-en/customer/info",
          "/tn-en/customer/addresses",
          "/tn-en/wishlist",
          "/tn-en/orderdetails/19828",
          "/ug-en/onepagecheckout",
          "/ug-en/cart",
          "/ug-en/register",
          "/ug-en/getuserdata",
          "/ug-en/getheadershipto",
          "/ug-en/order/history",
          "/ug-en/customer/info",
          "/ug-en/customer/addresses",
          "/ug-en/wishlist",
          "/ug-en/orderdetails/19828",
          "/zm-en/onepagecheckout",
          "/zm-en/cart",
          "/zm-en/register",
          "/zm-en/getuserdata",
          "/zm-en/getheadershipto",
          "/zm-en/order/history",
          "/zm-en/customer/info",
          "/zm-en/customer/addresses",
          "/zm-en/wishlist",
          "/zm-en/orderdetails/19828"

        ]
        backend_address_pool_name  = "dubuy-vm-prod"
        backend_http_settings_name = "dubuy-vm"
      }
    ]
  }
]
