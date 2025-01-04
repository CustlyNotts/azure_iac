subscription_id     = <subscription_id>
cdn_profile_name    = "cdncargoescommunity"
resource_group_name = "rg-communitysite-prod"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "UseQueryString"
endpointtags = {
       "Application Name": "",
        "Application Owner": "Daniel",
        "ENV": "PROD"
}
tags = {
        "Application Name": "",
        "Application Owner": "Daniel",
        "ENV": "PROD"
}

compression_enabled = true
cdn_endpoint_name   = "cargoescommunity"
origin = {
  host_name  = "strgcommunitysiteprod.z1.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "strgcommunitysiteprod-blob-core-windows-net"
}
origin_host_header = "strgcommunitysiteprod.z1.web.core.windows.net"
origin_path        = null



global_delivery_rule = {

}

#delivery_rule
delivery_rule = {
  rule_1 = {
    name  = "EnforcedHttps"
    order = 1
    request_scheme_condition = {
      rule_1 = {
        match_values     = ["HTTP"]
        negate_condition = false
        operator         = "Equal"
      }
    }

    url_redirect_action = {
      rule_1 = {
        protocol      = "Https"
        redirect_type = "Found"
      }
   }
  },
 rule_2 = {
    name  = "INRedirect"
    order = 2
    url_path_condition = {
      rule_2 = {
        match_values     = ["/xyz"]
        negate_condition = false
        operator         = "Contains"
        transforms       = []
      }
    }

    url_redirect_action = {
      rule_2 = {
        hostname      = "www.bharattrade.in"
        path          = "/launch.html"
        redirect_type = "Found"
        protocol      = "Https"
      }
   }

  }

}
