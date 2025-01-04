
subscription_id     = <subscription_id>
cdn_profile_name    = "cdn-global-prod"
resource_group_name = "rg-global-prod"
sku                 = "Premium_Verizon"
location            = "Global"
endpointtags = {
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "PROD"
}
tags = {
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "PROD"
}

compression_enabled           = false
cdn_endpoint_name             = "cdnglobalprod"
querystring_caching_behaviour = "NotSet"
optimization_type             = "GeneralWebDelivery"
origin_host_header            = "stglobalprodfile.blob.core.windows.net"
origin_path                   = "/web"

origin = {
  host_name  = "stglobalprodfile.blob.core.windows.net"
  http_port  = null
  https_port = null
  name       = "stglobalprodfile-z1-web-core-windows-net"
}

###Custom Domain
custom_domain_enabled = true
custom_domain_list = {
  gl-community-dpworld-com = {
    custom_hostname    = "gl-community.dpworld.com"
    custom_domain_name = "gl-community-dpworld-com"
    custom_cdn_managed_https = {
      certificate_type = "Shared"
      protocol_type    = "IPBased"
      tls_version      = "None"
    }
  }
}

#global_delivery_rule

global_delivery_rule = {}

#delivery_rule
delivery_rule = {}
