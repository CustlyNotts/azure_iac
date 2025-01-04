subscription_id     = <subscription_id>
cdn_profile_name    = "cdn-crrdev-001"
resource_group_name = "rg-crrdev-001"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "UseQueryString"
endpointtags = {
        "department": "dtworld",
        "subscription": "dtworld",
        "project": "crr",
        "resource": "ep",
        "region": "uaenorth",
        "env": "DEV",
        "Application Name": "CRRDEV 001",
        "Application Owner": "hussain.hashimi@dpworld.com"
}
tags = {
        "department": "dtworld",
        "subscription": "dtworld",
        "project": "mawani",
        "resource": "cdn",
        "region": "uaenorth",
        "env": "DEV",
        "ms-resource-usage": "cdn",
        "Application Name": "CRRDEV 001",
        "Application Owner": "hussain.hashimi@dpworld.com"
}

compression_enabled = true
cdn_endpoint_name   = "cdn-crrdev-001"
origin = {
  host_name  = "stcdncrrdev001.z1.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "cdn-crrdev-001-blob-core-windows-net"
}
origin_host_header = "stcdncrrdev001.z1.web.core.windows.net"
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
        value  = "http://crrdev.uaenorth.cloudapp.azure.com"
        name   = "Access-Control-Allow-Origin"
      }
    }
    request_header_condition = {
         rule_1 = {
           match_values     = ["http://crrdev.uaenorth.cloudapp.azure.com"]
           negate_condition = false
           operator         = "Equal"
           selector         = "Origin"
           transforms       = []
        }
   }
  }

}




