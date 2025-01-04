subscription_id     = <subscription_id>
name                = "dpw-uat-cd-ag"
resource_group_name = "rguatsitecore10"
subnet_id           = "/subscriptions/8b99dc94-b0e9-4144-8f0c-81093d2071b0/resourceGroups/rguatsitecore10/providers/Microsoft.Network/virtualNetworks/dpw-we-uat-vnet/subnets/cd-ag-we-uat-subnet"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags = {
  "env" : "PROD",
  "Application Name" : "Sitecore",
  "Application Owner" : "DPW Team"
}
firewall_policy_id = null
public_ip_name     = "dpw-uat-cd-ag-pip"


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIp"
gateway_ip_configuration_name  = "appGatewayIpConfig"


autoscale_configuration = {
  max_capacity = 10
  min_capacity = 0
}


zones = ["1", "2", "3"]
backend_address_pools = [
  {
    name  = "dpw-uat-cd-ag-bpool"
    fqdns = ["dpw-uat-cd-1.azurewebsites.net"]
  }
]
backend_http_settings = [
  {
    name                  = "dpw-uat-cd-ag-http-setting"
    cookie_based_affinity = "Disabled"
    host_name             = "dpw-uat-cd.dpworld.com"
    path                  = ""
    enable_https          = true
    request_timeout       = 120
    probe_name            = "dpw-uat-cd-ag-http-settingc2ba83a3-a708-46c6-8730-c5434fc6502b"
  }
]
http_listeners = [
  {
    name        = "dpw-uat-cd-ag-http-listener"
    host_name   = "dpw-uat-cd.dpworld.com"
    require_sni = false
  },
  {
    name                 = "dpw-uat-cd-ag-listener"
    ssl_certificate_name = "dpw2023wchain"
    host_name            = "dpw-uat-cd.dpworld.com"
    require_sni          = true
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "dpw2023wchain"
    data                = ""
    password            = ""
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/dpworld/801fac39a45941ea99d65affece287d3"
  }
  /* {
    name                = "dpworld-uat-cert"
    data                = "files/certs/dpworldfullchain2023.pfx"
    password            = "DXB@!$2023$"
  },
  {
    name                = "wildcard_dpw_cert_2022"
    data                = "files/certs/dpworldfullchain2023.pfx"
    password            = "DXB@!$2023$" 
  },
  {
    name                = "wildcard_dpworld_com_2022_2023"
    data                = "files/certs/dpworldfullchain2023.pfx"
    password            = "DXB@!$2023$" 
  }  */
]
request_routing_rules = [
  {
    name                        = "dpw-uat-cd-http-to-https-rr"
    rule_type                   = "Basic"
    http_listener_name          = "dpw-uat-cd-ag-http-listener"
    redirect_configuration_name = "dpw-uat-cd-http-to-https-rr"
    priority                    = 20
  },

  {
    name                       = "dpw-uat-cd-ag-rr"
    rule_type                  = "Basic"
    http_listener_name         = "dpw-uat-cd-ag-listener"
    backend_address_pool_name  = "dpw-uat-cd-ag-bpool"
    backend_http_settings_name = "dpw-uat-cd-ag-http-setting"
    priority                   = 10
  }
]
redirect_configuration = [
  {
    name                 = "dpw-uat-cd-http-to-https-rr"
    redirect_type        = "Permanent"
    target_listener_name = "dpw-uat-cd-ag-listener"
  }
]
url_path_maps = []

health_probes = [
  {
    name                = "dpw-uat-cd-ag-http-settingc2ba83a3-a708-46c6-8730-c5434fc6502b"
    host                = "dpw-uat-cd.dpworld.com"
    interval            = 30
    protocol            = "Https"
    path                = "/"
    timeout             = 30
    unhealthy_threshold = 3
    minimum_servers     = 0
    match = {
      status_code = ["200-399"]
    }

  }
]
