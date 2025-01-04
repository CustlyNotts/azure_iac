subscription_id     = <subscription_id>
cdn_profile_name              = "cdnbtuat"
cdn_profile                   = false ####only import the endpoint and cdn profile exist
optimization_type             = "GeneralWebDelivery"
querystring_caching_behaviour = "IgnoreQueryString"
resource_group_name           = "rg-btuat"
sku                           = "Standard_Microsoft"
location                      = "Global"
endpointtags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV"
}
tags = {
  "location" : "centralindia",
  "env" : "DEV",
  "displayName" : "cdnbtuat",
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart"
}
compression_enabled = true
cdn_endpoint_name   = "cdnep"
origin = {
  host_name  = "stb2bbtuat.z29.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "stb2bbtuat-z29-web-core-windows-net"
}
origin_host_header = "stb2bbtuat.z29.web.core.windows.net"
origin_path        = null
#delivery_rule
delivery_rule = {}
#global_delivery_rule
global_delivery_rule = {}
