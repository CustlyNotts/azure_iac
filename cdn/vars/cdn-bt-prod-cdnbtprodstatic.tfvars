subscription_id     = <subscription_id>
cdn_profile_name    = "cdnbtprodstatic"
resource_group_name = "rg-btprod"
sku                 = "Standard_Microsoft"
location            = "Global"
endpointtags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
tags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}

compression_enabled           = true
cdn_endpoint_name             = "cdnbtprodstatic"
querystring_caching_behaviour = "IgnoreQueryString"
origin = {
  host_name  = "stbtprodstatic.z29.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "stbtprodstatic-z29-web-core-windows-net"
}
origin_host_header = "stbtprodstatic.z29.web.core.windows.net"
origin_path        = null

###Customdomain
custom_domain_enabled = true
custom_domain_list = {
  www-bharattrade-in = {
    custom_hostname        = "www.bharattrade.in"
    custom_domain_name     = "www-bharattrade-in"
    custom_cdn_endpoint_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprod/providers/Microsoft.Cdn/profiles/cdnbtprodstatic/endpoints/cdnbtprodstatic"
    user_managed_https = {
      tls_version         = "TLS12"
      key_vault_secret_id = "https://kv-btprod-tls.vault.azure.net/secrets/wildcard-bharattrade"
    }
  }
}

#global_delivery_rule

global_delivery_rule = {
  rule_1 = {
    url_redirect_action = {
      rule_1 = {
        redirect_type = "Found"
        protocol      = "MatchRequest"
        query_string  = null
        path          = "/in"
        hostname      = "community.cargoes.com"
        fragment      = null
      }
    }
  }
}

#delivery_rule
delivery_rule = {
  rule_1 = {
    name  = "EnforcedHttps"
    order = 1
    request_scheme_condition = {
      rule_1 = {
        match_values     = ["HTTP"]
        operator         = "Equal"
        negate_condition = false

      }
    }
    url_redirect_action = {
      rule_1 = {
        redirect_type = "Found"
        protocol      = "Https"
        query_string  = null
        path          = null
        hostname      = null
        fragment      = null
      }
    }
  }
}
