subscription_id     = <subscription_id>
cdn_profile_name    = "cdnbtdev"
resource_group_name = "rg-bt-dev"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "UseQueryString"
endpointtags = {
        "location": "uaenorth",
        "env": "DEV",
        "displayName": "endpoint-btdev",
        "Application Name": "BT AKs",
        "Application Owner": "Daniel Stuart"
}
tags = {
        "location": "uaenorth",
        "env": "DEV",
        "displayName": "cdnbtdev",
        "Application Name": "BT AKs",
        "Application Owner": "Daniel Stuart"
}

compression_enabled = true
cdn_endpoint_name   = "endpoint-btdev"
origin = {
  host_name  = "stbtdev.z1.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "origin1"
}
origin_host_header = "stbtdev.z1.web.core.windows.net"
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
           match_values     = ["btdev.mawani.trade"]
           negate_condition = false
           operator         = "Contains"
           selector         = "Origin"
           transforms       = []
        }
   }
  }

}
