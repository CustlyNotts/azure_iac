subscription_id     = <subscription_id>
cdn_profile_name    = "cdnp-qlprod"
resource_group_name = "rg-qlprod"
sku                 = "Standard_Microsoft"
location            = "Global"
endpointtags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
tags = {
  "Application Name" : "Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}

compression_enabled           = true
cdn_endpoint_name             = "cdne-qlprod"
querystring_caching_behaviour = "IgnoreQueryString"
origin = {
  host_name  = "stqlprod.blob.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "stqlprod-blob-core-windows-net"
}
origin_host_header = "stqlprod.blob.core.windows.net"
origin_path        = null


#global_delivery_rule
global_delivery_rule = {}

#delivery_rule
delivery_rule = {}
