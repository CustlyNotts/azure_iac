subscription_id     = <subscription_id>
cdn_profile_name    = "cnstestcdn"
resource_group_name = "rg-cnstest"
sku                 = "Standard_Microsoft"
location            = "Global"
tags = {
  "department" : "dtworld",
  "subscription" : "Mawani CNS",
  "project" : "mawani",
  "resource" : "cdn",
  "region" : "uksouth",
  "customer" : "cns",
  "env" : "TESTING",
  "ms-resource-usage" : "cdn",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
}
endpointtags = {
  "department" : "dtworld",
  "subscription" : "Mawani CNS",
  "project" : "mawani",
  "resource" : "ep",
  "region" : "uksouth",
  "customer" : "cns",
  "env" : "TESTING",
  "ms-resource-usage" : "cdnendpoint",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
}
compression_enabled           = true
cdn_endpoint_name             = "cnstestcdn"
querystring_caching_behaviour = "UseQueryString"
origin = {
  host_name  = "gltestui-community.dpworld.com"
  http_port  = null
  https_port = null
  name       = "cnstestcdnstorage-blob-core-windows-net"
}
origin_host_header = "gltestui-community.dpworld.com"
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
        match_values     = ["http://cnstest.cnsonline.co.uk"]
        operator         = "Equal"
        negate_condition = false
        selector         = "Origin"
        transforms       = []
      }
    }
    modify_response_header_action = {
      rule_1 = {
        action = "Overwrite"
        value  = "http://cnstest.cnsonline.co.uk"
        name   = "Access-Control-Allow-Origin"
      }
    }
  }
}
