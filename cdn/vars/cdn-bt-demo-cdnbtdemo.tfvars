subscription_id     = <subscription_id>
cdn_profile_name    = "cdnbtdemo"
resource_group_name = "rg-btdemo"
sku                 = "Standard_Microsoft"
location            = "Global"
endpointtags = {
  "location" : "centralindia",
  "env" : "DEV",
  "displayName" : "endpoint-btdemo",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart"
}
tags = {
  "location" : "centralindia",
  "env" : "DEV",
  "displayName" : "cdnbtdemo",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart"
}

compression_enabled = true
cdn_endpoint_name   = "endpoint-btdemo"
origin = {
  host_name  = "gltestui-community.dpworld.com"
  http_port  = 80
  https_port = 443
  name       = "origin1"
}
origin_host_header = "gltestui-community.dpworld.com"
origin_path        = null


#global_delivery_rule

global_delivery_rule = {
  rule_1 = {
    url_rewrite_action = {
      rule_1 = {
        source_pattern          = "/"
        destination             = "/generic/"
        preserve_unmatched_path = true
      }
    }
  }
}

#delivery_rule
delivery_rule = {
  rule_1 = {
    name  = "urlredirect"
    order = 1
    url_file_extension_condition = {
      rule_1 = {
        match_values     = ["https://endpoint-btdemo.azureedge.net/"]
        negate_condition = false
        operator         = "BeginsWith"
        transforms       = []
      }
    }
    url_rewrite_action = {
      rule_1 = {
        destination             = "/generic/"
        source_pattern          = "/"
        preserve_unmatched_path = true
      }
    }
  }
}
