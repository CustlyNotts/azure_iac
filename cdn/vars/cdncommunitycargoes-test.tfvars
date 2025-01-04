subscription_id     = <subscription_id>
cdn_profile_name    = "cdncommunitycargoes-test"
resource_group_name = "rg-communitysite-test"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "UseQueryString"
endpointtags = {
        "Application Name": "cargoes",
        "Application Owner": "Daniel Stuart / pradeesh raju",
        "ENV": "TESTING"
        }
tags = {
        "Application Name": "cargoes",
        "Application Owner": "Daniel Stuart / pradeesh raju",
        "ENV": "TESTING"
}

compression_enabled = true
cdn_endpoint_name   = "testcommunitycargoes"
origin = {
  host_name  = "stcommunitysitetest.z1.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "stcommunitysitetest-blob-core-windows-net"
}
origin_host_header = "stcommunitysitetest.z1.web.core.windows.net"
origin_path        = null

