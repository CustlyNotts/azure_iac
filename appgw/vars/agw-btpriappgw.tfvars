subscription_id     = <subscription_id>
name                = "agw-btpriappgw"
resource_group_name = "rg-bthub"
subnet_id           = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-bthub/subnets/snet-btagw"
sku = {
  name     = "WAF_v2"
  tier     = "WAF_v2"
  capacity = 0
}
tags = {
  "Name" : "agw-btpriappgw",
  "Service" : "ApplicationGateway",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
#firewall_policy_id = ""
public_ip_name = "pip-agw-btpriappgw"

enable_http2 = false

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIp"
gateway_ip_configuration_name  = "appGatewayIpConfig"


autoscale_configuration = {
  max_capacity = 15
  min_capacity = 0
}

backend_address_pools = [
  {
    name         = "bp-btpreprod"
    ip_addresses = ["10.223.16.14", "10.223.16.16"]
  },
  {
    name         = "bp-btstaging"
    ip_addresses = ["10.223.16.10", "10.223.8.22"]
  },
  {
    name         = "bp-bttest"
    ip_addresses = ["10.223.16.8"]
  },
  {
    name         = "bp-btpreuat-activemq"
    ip_addresses = ["10.223.34.108"]
  },
  {
    name         = "bp-btdemo-activemq"
    ip_addresses = ["10.223.0.4"]
  },
  {
    name         = "bp-btprod"
    ip_addresses = ["10.223.16.11", "10.223.16.13"]
  },
  {
    name         = "bp-btprod-activemw"
    ip_addresses = ["10.223.49.159"]
  },
]
backend_http_settings = [
  {
    name                  = "http-bthub"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = null
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-btdemo"
  },
  {
    name                  = "http-btuatelk-80"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 120
  },
  {
    name                  = "http-btpreuat-activemq-80"
    cookie_based_affinity = "Disabled"
    port                  = 8161
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-btpreuat-activemq"
  },
  {
    name                  = "http-btdemo-activemq-80"
    cookie_based_affinity = "Disabled"
    port                  = 8161
    path                  = ""
    enable_https          = false
    request_timeout       = 20
    probe_name            = "hp-btdemo-activemq"
  },
  {
    name                  = "http-btdemo-elk-80"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-btdemo-elk"
  },
  {
    name                  = "http-btprod-activemq-80"
    cookie_based_affinity = "Disabled"
    port                  = 8161
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-btprod-activemq"
  },
  {
    name                  = "http-btstaging"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-bttesting"
  },
  {
    name                  = "http-btprod"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 30
    probe_name            = "hp-btprod"
  },
  {
    name                  = "http-bttest"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 20
    probe_name            = "hp-bttest"
  },
  {
    name                  = "http-btuat"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 20
    probe_name            = "hp-btuat"
  },
  {
    name                  = "http-preprod"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 120
    probe_name            = "hp-preprod"
  },
  {
    name                  = "http-inprod"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 20
    probe_name            = "hp-inprod"
  },
  {
    name                  = "http-intest-dpworld"
    cookie_based_affinity = "Disabled"
    port                  = 80
    path                  = ""
    enable_https          = false
    request_timeout       = 20
    probe_name            = "hp-intest-dpworld"
  },
]
http_listeners = [
  {
    name        = "lstn-btpreuat-activemq-80"
    host_name   = "stagingmq.bharattrade.in"
    require_sni = false
  },
  {
    name        = "lstn-btstaging-80"
    host_name   = "staging.bharattrade.in"
    require_sni = false
  },
  {
    name        = "lstn-btprod-80"
    host_name   = "prod.bharattrade.in"
    require_sni = false
  },
  {
    name        = "lstn-btdemo-activemq-80"
    host_name   = "demomq.bharattrade.in"
    require_sni = false
  },
  {
    name        = "lstn-btdemo-80"
    require_sni = false
  },
  {
    name        = "lstn-btpreprod-80"
    host_name   = "inpreprod-community.cargoes.com"
    require_sni = false
  },
  {
    name        = "lstn-intest-80"
    host_name   = "intest-community.cargoes.com"
    require_sni = false
  },
  {
    name        = "lstn-inuat-80"
    host_name   = "inuat-community.cargoes.com"
    require_sni = false
  },
  {
    name        = "lstn-inprod-80"
    host_name   = "in-community.cargoes.com"
    require_sni = false
  },
  {
    name        = "lstn-btprod-mq-80"
    host_name   = "inmq-community.cargoes.com"
    require_sni = false
  },
  {
    name        = "lstn-intest-dpworld-80"
    host_name   = "intest-community.dpworld.com"
    require_sni = false
  },
  {
    name                 = "lstn-btprepod-443"
    ssl_certificate_name = "Cargoesfullcert2024"
    host_name            = "inpreprod-community.cargoes.com"
    require_sni          = true
  },
  {
    name                 = "lstn-inprod-443"
    ssl_certificate_name = "Cargoesfullcert2024"
    host_name            = "in-community.cargoes.com"
    require_sni          = true
  },
  {
    name                 = "lstn-intest-dpworld-443"
    ssl_certificate_name = "Dpworldfullchain"
    host_name            = "intest-community.dpworld.com"
    require_sni          = true
  },
  {
    name                 = "lstn-btpreuat-activemq-443"
    ssl_certificate_name = "bharattradefullcertlatest-08-03"
    host_name            = "stagingmq.bharattrade.in"
    require_sni          = true
  },
  {
    name                 = "lstn-btdemo-activemq-443"
    ssl_certificate_name = "bharattradefullcertlatest-08-03"
    host_name            = "demomq.bharattrade.in"
    require_sni          = true
  },
  {
    name                 = "lstn-btprod-443"
    ssl_certificate_name = "bharattradefullcertlatest-08-03"
    host_name            = "prod.bharattrade.in"
    require_sni          = true
  },
  {
    name                 = "lstn-btdemo-443"
    ssl_certificate_name = "bharattradefullcertlatest-08-03"
    require_sni          = true
  },
  {
    name                 = "lstn-inuat-443"
    ssl_certificate_name = "Cargoesfullcert2024"
    host_name            = "inuat-community.cargoes.com"
    require_sni          = true
  },
  {
    name                 = "lstn-intest-443"
    ssl_certificate_name = "Cargoesfullcert2024"
    host_name            = "intest-community.cargoes.com"
    require_sni          = true
  },
  {
    name                 = "lstn-btprod-mq-443"
    ssl_certificate_name = "Cargoesfullcert2024"
    host_name            = "inmq-community.cargoes.com"
    require_sni          = true
  },
  {
    name                 = "lstn-btstaging-443"
    ssl_certificate_name = "bharattradefullcertlatest-08-03"
    host_name            = "staging.bharattrade.in"
    require_sni          = true
  }
]
key_vault_subscription_id     = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
key_vault_resource_group_name = "rg-infrateam"
key_vault_name                = "kv-infrateam"
ssl_certificates = [
  {
    name                = "lstn-btdemo-443vaultCert"
    data                = ""
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "mawani"
    data                = "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"
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "btstaging-vault"
    data                = ""
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "btstagingfullcert-vault"
    data                = ""
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "bharattrafefullcert-08-03"
    data                = "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"
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "bharattradefullcertlatest-08-03"
    data                = "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"
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "cargoes"
    data                = "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"
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "Cargoesfullchain-05-22"
    data                = "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"
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "Cargoesfullcert2024"
    data                = "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"
    key_vault_secret_id = ""
    password            = ""
  },
  {
    name                = "Dpworldfullchain"
    data                = "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"
    key_vault_secret_id = ""
    password            = ""
  },
]
request_routing_rules = [
  {
    name                        = "rule-btdemo-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btdemo-80"
    redirect_configuration_name = "rule-btdemo-80"
    priority
  },
  {
    name                        = "rule-btstaging-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btstaging-80"
    redirect_configuration_name = "rule-btstaging-80"
  },
  {
    name                       = "rule-btpreuat-activemq-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btpreuat-activemq-443"
    backend_http_settings_name = "http-btpreuat-activemq-80"
    backend_address_pool_name  = "bp-btpreuat-activemq"
  },
  {
    name                        = "rule-btpreuat-activemq-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btpreuat-activemq-80"
    redirect_configuration_name = "rule-btpreuat-activemq-80"
  },
  {
    name                        = "rule-btdemo-activemq-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btdemo-activemq-80"
    redirect_configuration_name = "rule-btdemo-activemq-80"
  },
  {
    name                       = "rule-btdemo-activemq-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btdemo-activemq-443"
    backend_address_pool_name  = "bp-btdemo-activemq"
    backend_http_settings_name = "http-btdemo-activemq-80"
  },
  {
    name                        = "rule-btprod-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btprod-80"
    redirect_configuration_name = "rule-btprod-80"
  },
  {
    name                       = "rule-btprod-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btprod-443"
    backend_address_pool_name  = "bp-btprod"
    backend_http_settings_name = "http-btprod"
  },
  {
    name                       = "rule-btprod-activemq-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btprod-mq-443"
    backend_address_pool_name  = "bp-btprod-activemw"
    backend_http_settings_name = "http-btprod-activemq-80"
  },
  {
    name                        = "rule-btprod-activemq-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btprod-mq-80"
    redirect_configuration_name = "rule-btprod-activemq-80"
  },
  {
    name                        = "rule-btpreprod-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-btpreprod-80"
    redirect_configuration_name = "rule-btpreprod-80"
  },
  {
    name                       = "rule-btpreprod-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btprepod-443"
    backend_address_pool_name  = "bp-btpreprod"
    backend_http_settings_name = "http-preprod"
  },
  {
    name                       = "rule-btdemo-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btdemo-443"
    backend_address_pool_name  = "bp-btpreprod"
    backend_http_settings_name = "http-bthub"
  },
  {
    name                        = "rule-intest-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-intest-80"
    redirect_configuration_name = "rule-intest-80"
  },
  {
    name                       = "rule-intest-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-intest-443"
    backend_address_pool_name  = "bp-bttest"
    backend_http_settings_name = "http-bttest"
  },
  {
    name                        = "rule-inuat-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-inuat-80"
    redirect_configuration_name = "rule-inuat-80"
  },
  {
    name                       = "rule-inuat-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-inuat-443"
    backend_address_pool_name  = "bp-btstaging"
    backend_http_settings_name = "http-btuat"
  },
  {
    name                       = "rule-btstaging-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-btstaging-443"
    backend_address_pool_name  = "bp-btstaging"
    backend_http_settings_name = "http-btstaging"
  },
  {
    name                        = "rule-inprod-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-inprod-80"
    redirect_configuration_name = "rule-inprod-80"
  },
  {
    name                       = "rule-inprod-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-inprod-443"
    backend_address_pool_name  = "bp-btprod"
    backend_http_settings_name = "http-inprod"
  },
  {
    name                        = "rule-intest-dpworld-80"
    rule_type                   = "Basic"
    http_listener_name          = "lstn-intest-dpworld-80"
    redirect_configuration_name = "rule-intest-dpworld-80"
  },
  {
    name                       = "rule-intest-dpworld-443"
    rule_type                  = "Basic"
    http_listener_name         = "lstn-intest-dpworld-443"
    backend_address_pool_name  = "bp-bttest"
    backend_http_settings_name = "http-intest-dpworld"
  }
]
redirect_configuration = [
  {
    name                 = "rule-btdemo-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btdemo-443"
  },
  {
    name                 = "rule-btstaging-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btstaging-443"
  },
  {
    name                 = "rule-btdemo-activemq-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btdemo-activemq-443"
  },
  {
    name                 = "rule-btprod-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btprod-443"
  },
  {
    name                 = "rule-btpreprod-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btprepod-443"
  },
  {
    name                 = "rule-intest-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-intest-443"
  },
  {
    name                 = "rule-inuat-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-inuat-443"
  },
  {
    name                 = "rule-inprod-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-inprod-443"
  },
  {
    name                 = "rule-btpreuat-activemq-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btpreuat-activemq-443"
  },
  {
    name                 = "rule-btprod-activemq-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-btprod-mq-443"
  },
  {
    name                 = "rule-intest-dpworld-80"
    redirect_type        = "Permanent"
    target_listener_name = "lstn-intest-dpworld-443"
  },
]
url_path_maps = []

health_probes = [
  {
    name                = "hp-btdemo"
    host                = "demo.bharattrade.in"
    interval            = 20
    path                = "/uaa/login"
    protocol            = "Http"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp-btpreuat-activemq"
    host                = "stagingmq.bharattrade.in"
    interval            = 30
    path                = "/"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399", "401"]
    }

  },
  {
    name                = "hp-btdemo-activemq"
    host                = "demomq.bharattrade.in"
    interval            = 30
    path                = "/"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399", "401"]
    }

  },
  {
    name                = "hp-btdemo-elk"
    host                = "demoelk.bharattrade.in"
    interval            = 30
    path                = "/api/status"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399", "401"]
    }

  },
  {
    name                = "hp-bttesting"
    host                = "staging.bharattrade.in"
    interval            = 20
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp-btprod"
    host                = "in-community.cargoes.com"
    interval            = 30
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp-btprod-activemq"
    host                = "inmq-community.cargoes.com"
    interval            = 30
    path                = "/"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399", "401"]
    }

  },
  {
    name                = "hp-preprod"
    host                = "inpreprod-community.cargoes.com"
    interval            = 20
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp-bttest"
    host                = "intest-community.cargoes.com"
    interval            = 30
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp-btuat"
    host                = "inuat-community.cargoes.com"
    interval            = 20
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp-inprod"
    host                = "in-community.cargoes.com"
    interval            = 20
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 20
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
  {
    name                = "hp-intest-dpworld"
    host                = "intest-community.dpworld.com"
    interval            = 30
    path                = "/probe/health.html"
    protocol            = "Http"
    timeout             = 30
    unhealthy_threshold = 3
    match = {
      status_code = ["200-399"]
    }

  },
]
