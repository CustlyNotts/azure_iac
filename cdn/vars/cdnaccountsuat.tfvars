subscription_id     = <subscription_id>
cdn_profile_name    = "cdnaccountsuat"
resource_group_name = "rg-accountsuat"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "UseQueryString"
endpointtags = {
        "location": "uaenorth",
        "env": "DEV",
        "displayName": "endpoint-accountsuat",
        "Application Name": "aks",
        "Application Owner": "Shaloof/Nowphal"
}
tags = {
        "location": "uaenorth",
        "env": "DEV",
        "displayName": "cdnaccountsuat",
        "Application Name": "aks",
        "Application Owner": "Shaloof/Nowphal"
}

compression_enabled = true
cdn_endpoint_name   = "endpoint-accountsuat"
origin = {
  host_name  = "staccountsuat.z1.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "origin1"
}
origin_host_header = "staccountsuat.z1.web.core.windows.net"
origin_path        = null


#global_delivery_rule

global_delivery_rule = {

}

#delivery_rule
delivery_rule = {
  rule_1 = {
    name  = "CORS"
    order = 1
    modify_response_header_action = {
      rule_1 = {
        action = "Overwrite"
        value  = "*"
        name   = "Access-Control-Allow-Origin"
      }
    }
    request_header_condition = {
         rule_1 = {
           match_values     = ["mawani.trade"]
           negate_condition = false
           operator         = "Contains"
           selector         = "Origin"
           transforms       = []
        }
   }
  },
 rule_2 = {
    name  = "Enforcehttps"
    order = 2
    request_scheme_condition = {
       rule_2 = {
        match_values     = ["HTTP"]
        negate_condition = false
        operator         = "Equal"
            }
    }
    url_redirect_action = {
       rule_2 = {
        protocol      = "Https"
        redirect_type = "Found"
      }
    }

  }

}
