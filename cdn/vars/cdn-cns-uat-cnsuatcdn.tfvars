subscription_id     = <subscription_id>
cdn_profile_name    = "cnsuatcdn"
resource_group_name = "rg-cnsuat"
sku                 = "Standard_Microsoft"
location            = "Global"
endpointtags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "customer" : "cns",
  "department" : "dtworld",
  "env" : "UAT",
  "ms-resource-usage" : "cdnendpoint",
  "project" : "mawani",
  "region" : "uksouth",
  "resource" : "ep",
  "subscription" : "Mawani CNS"
}
tags = {
  "department" : "dtworld",
  "subscription" : "Mawani CNS",
  "project" : "mawani",
  "resource" : "cdn",
  "region" : "uksouth",
  "customer" : "cns",
  "env" : "DEV",
  "ms-resource-usage" : "cdn",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
}
compression_enabled = true
cdn_endpoint_name   = "cnsuatcdn"
origin = {
  host_name  = "cnsuatcdnstorage.blob.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "cnsuatcdnstorage-blob-core-windows-net"
}
origin_host_header = "cnsuatcdnstorage.blob.core.windows.net"
origin_path        = "/mawani"
#delivery_rule
delivery_rule = {
  rule_1 = {
    name  = "CORS"
    order = "1"
    request_header_condition = {
      rule_1 = {
        operator     = "Equal"
        selector     = "Origin" ##HeaderValue
        match_values = ["https://cnsuat.cnsonline.co.uk"]
      }
    }
    modify_response_header_action = {
      rule_1 = {
        action = "Overwrite"
        value  = "*"
        name   = "Access-Control-Allow-Origin"
      }
      rule_2 = {
        action = "Overwrite"
        value  = "*"
        name   = "Access-Control-Allow-Methods"
      }
    }
    modify_request_header_action = {
      rule_1 = {
        action = "Overwrite"
        value  = "*"
        name   = "Access-Control-Allow-Headers"
      }
    }
  }
}
#global_delivery_rule
global_delivery_rule = {}
