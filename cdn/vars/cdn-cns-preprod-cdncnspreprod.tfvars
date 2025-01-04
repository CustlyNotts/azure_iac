subscription_id     = <subscription_id>
cdn_profile_name    = "cdncnspreprod"
resource_group_name = "rg-cnspreprod"
sku                 = "Standard_Microsoft"
location            = "Global"
endpointtags = {
  "location" : "uksouth",
  "env" : "DEV",
  "displayName" : "endpoint-cnspreprod",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
}
tags = {
  "location" : "uksouth",
  "env" : "DEV",
  "displayName" : "cdncnspreprod",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
}

compression_enabled           = true
cdn_endpoint_name             = "endpoint-cnspreprod"
querystring_caching_behaviour = "UseQueryString"
origin = {
  host_name  = "stcnspreprod.blob.core.windows.net"
  http_port  = null
  https_port = null
  name       = "origin1"
}
origin_host_header = "stcnspreprod.blob.core.windows.net"
origin_path        = null


#global_delivery_rule

global_delivery_rule = {}

#delivery_rule
delivery_rule = {
  rule_1 = {
    name  = "CORS"
    order = 1
    request_header_condition = {
      rule_1 = {
        match_values     = ["mawani.trade"]
        operator         = "Contains"
        negate_condition = false
        selector         = "Origin"
        transforms       = []
      }
    }
    modify_response_header_action = {
      rule_1 = {
        action = "Overwrite"
        value  = "*"
        name   = "Access-Control-Allow-Origin"
      }
    }
  }
}
