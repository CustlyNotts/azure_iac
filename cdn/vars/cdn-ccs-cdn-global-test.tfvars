
subscription_id     = <subscription_id>
cdn_profile_name    = "cdn-global-test"
resource_group_name = "rg-global-test"
sku                 = "Premium_Verizon"
location            = "Global"
endpointtags = {
  "Application Name" : "global",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "TESTING"
}
tags = {
  "Application Name" : "global",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "TESTING"
}

compression_enabled           = false
cdn_endpoint_name             = "gltest-community"
querystring_caching_behaviour = "NotSet"
optimization_type             = "GeneralWebDelivery"
origin_host_header            = "stglobaltestfile.blob.core.windows.net"
origin_path                   = "/web"

origin = {
  host_name  = "stglobaltestfile.blob.core.windows.net"
  http_port  = null
  https_port = null
  name       = "stglobaltestfile-z1-web-core-windows-net"
}

###Custom Domain
custom_domain_enabled = true
custom_domain_list = {
  gltest-community-dpworld-com = {
    custom_hostname    = "gltest-community.dpworld.com"
    custom_domain_name = "gltest-community-dpworld-com"
    custom_cdn_managed_https = {
      certificate_type = "Shared"
      protocol_type    = "IPBased"
      tls_version      = "None"
    }
  }
  gltest-community-cargoes-com = {
    custom_hostname    = "gltest-community.cargoes.com"
    custom_domain_name = "gltest-community-cargoes-com"
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
