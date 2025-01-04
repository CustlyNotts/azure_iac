
subscription_id     = <subscription_id>
cdn_profile_name    = "cdn-global-uat"
resource_group_name = "rg-global-uat"
sku                 = "Premium_Verizon"
location            = "Global"
endpointtags = {
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "UAT"
}
tags = {
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "UAT"
}

compression_enabled           = false
cdn_endpoint_name             = "cdnglobaluat"
querystring_caching_behaviour = "NotSet"
optimization_type             = "GeneralWebDelivery"
origin_host_header            = "stglobaluatfile.blob.core.windows.net"
origin_path                   = "/web"

origin = {
  host_name  = "stglobaluatfile.blob.core.windows.net"
  http_port  = null
  https_port = null
  name       = "stglobaluatfile-z1-web-core-windows-net"
}

###Custom Domain
custom_domain_enabled = true
custom_domain_list = {
  gluat-community-cargoes-com = {
    custom_hostname    = "gluat-community.cargoes.com"
    custom_domain_name = "gluat-community-cargoes-com"
    custom_cdn_managed_https = {
      certificate_type = "Shared"
      protocol_type    = "IPBased"
      tls_version      = "None"
    }
  }
  gluat-community-dpworld-com = {
    custom_hostname    = "gluat-community.dpworld.com"
    custom_domain_name = "gluat-community-dpworld-com"
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
