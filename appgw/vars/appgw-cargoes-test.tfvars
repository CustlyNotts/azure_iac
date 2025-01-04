subscription_id     = <subscription_id>
name                = "agw-cargoes-test"
resource_group_name = "rg-cargoeslogisticsdev-infra"
subnet_id           = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesLogisitics_dev/subnets/agw-subnet-test"
sku = {
  name     = "Standard_v2"
  tier     = "Standard_v2"
  capacity = 1
}
tags = {
  "ENV" : "DEV",
  "Application Name" : "CargoesLogisticsPlatform",
  "Application Owner" : "Udit/Ravi.P"
}
firewall_policy_id = null
public_ip_name     = "pub_ip_cargoes_test"


frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIp"
gateway_ip_configuration_name  = "appGatewayIpConfig"


autoscale_configuration = {
  max_capacity = 10
  min_capacity = 0
}


#zones = ["1", "2", "3"]
backend_address_pools = [
  {
    name         = "cargoeslogistics-test"
    ip_addresses = ["10.242.16.36"]
  }
]
backend_http_settings = [
  {
    name                  = "cargoes-http-test"
    cookie_based_affinity = "Enabled"
    host_name             = "test1-rates.cargoes.com"
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "cargoes-probe-test"
  }
]
http_listeners = [
  {
    name        = "cargoes-http-list-test"
    host_name   = "test1-rates.cargoes.com"
    require_sni = false
  },
  {
    name                 = "cargoes-http-list-ssl-test"
    ssl_certificate_name = "cargoes-dev"
    host_name            = "test1-rates.cargoes.com"
    require_sni          = true
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "cargoes-dev"
    data                = ""
    password            = ""
    key_vault_secret_id = "https://kv-infrateam.vault.azure.net/secrets/Cargoes-Domain"
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
    name                        = "cargoes-test-http-to-https-rr"
    rule_type                   = "Basic"
    http_listener_name          = "cargoes-http-list-test"
    redirect_configuration_name = "cargoes-test-http-to-https-rr"
    priority                    = 20
  },

  {
    name                       = "cargoes-test-https-rr"
    rule_type                  = "Basic"
    http_listener_name         = "cargoes-http-list-ssl-test"
    backend_address_pool_name  = "cargoeslogistics-test"
    backend_http_settings_name = "cargoes-http-test"
    priority                   = 10
  }
]
redirect_configuration = [
  {
    name                 = "cargoes-test-http-to-https-rr"
    redirect_type        = "Permanent"
    target_listener_name = "cargoes-http-list-ssl-test"
  }
]
url_path_maps = []

health_probes = [
  {
    name                = "cargoes-probe-test"
    host                = "test1-rates.cargoes.com"
    interval            = 30
    protocol            = "Http"
    path                = "/"
    timeout             = 30
    unhealthy_threshold = 3
    minimum_servers     = 0
    match = {
      status_code = ["200-399"]
    }

  }
]
