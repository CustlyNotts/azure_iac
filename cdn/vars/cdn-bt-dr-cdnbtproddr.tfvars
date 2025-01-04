subscription_id     = <subscription_id>
cdn_profile_name    = "cdnbtproddr"
resource_group_name = "rg-btprod-dr"
sku                 = "Standard_Microsoft"
location            = "Global"
endpointtags = {
  "location" : "southindia",
  "env" : "PROD",
  "displayName" : "endpoint-btprod-dr",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart"
}
tags = {
  "location" : "southindia",
  "env" : "PROD",
  "displayName" : "cdnbtproddr",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart"
}

compression_enabled           = true
cdn_endpoint_name             = "endpoint-btprod-dr"
querystring_caching_behaviour = "UseQueryString"
origin = {
  host_name  = "stbtproddr.blob.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "origin1"
}
origin_host_header = "stbtproddr.blob.core.windows.net"
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
        operator         = "Contains"
        selector         = "Origin" ##HeaderValue
        match_values     = ["mawani.trade"]
        negate_condition = false
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
