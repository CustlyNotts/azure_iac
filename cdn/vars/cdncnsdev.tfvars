subscription_id     = <subscription_id>
cdn_profile_name    = "cdncnsdev"
resource_group_name = "rg-cnsdev"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "UseQueryString"
endpointtags = {
        "location": "uaenorth",
        "env": "DEV",
        "displayName": "endpoint-cnsdev",
        "Application Name": "Mawani CNS",
        "Application Owner": "Daniel Stuart / pradeesh raju"
}
tags = {
        "location": "uaenorth",
        "env": "DEV",
        "displayName": "cdncnsdev",
        "Application Name": "Mawani CNS",
        "Application Owner": "Daniel Stuart / pradeesh raju"
}

compression_enabled = true
cdn_endpoint_name   = "endpoint-cnsdev"
origin = {
  host_name  = "stmawanijars.z13.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "origin1"
}
origin_host_header = "stmawanijars.z13.web.core.windows.net"
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
  }

}
