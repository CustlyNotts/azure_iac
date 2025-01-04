subscription_id     = <subscription_id>
cdn_profile_name    = "cdnbtuat"
resource_group_name = "rg-btuat"
sku                 = "Standard_Microsoft"
location            = "Global"
endpointtags = {
  "location" : "centralindia",
  "env" : "DEV",
  "displayName" : "endpoint-btuat",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart"
}
tags = {
  "location" : "centralindia",
  "env" : "DEV",
  "displayName" : "cdnbtuat",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart"
}
compression_enabled = true
cdn_endpoint_name   = "endpoint-btuat"
http_allowed        = false
origin = {
  host_name  = "gltestui-community.dpworld.com"
  http_port  = 80
  https_port = 443
  name       = "origin1"
}
origin_host_header = "gltestui-community.dpworld.com"
origin_path        = null
#delivery_rule
delivery_rule = {
  rule_1 = {
    name  = "CORS"
    order = "1"
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
#global_delivery_rule
global_delivery_rule = {}
