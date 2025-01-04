subscription_id     = <subscription_id>
cdn_profile_name    = "cdn-bcotest-001"
resource_group_name = "rg-bcotest-001"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "UseQueryString"
endpointtags = {
        "department": "dtworld",
        "subscription": "dtworld",
        "project": "mawani",
        "resource": "ep",
        "region": "uaenorth",
        "env": "TESTING",
        "ms-resource-usage": "cdnendpoint",
        "Application Name": "BCOTEST 001",
        "Application Owner": "hussain.hashimi@dpworld.com"
}
tags = {
        "department": "dtworld",
        "subscription": "dtworld",
        "project": "mawani",
        "resource": "cdn",
        "region": "uaenorth",
        "env": "TESTING",
        "ms-resource-usage": "cdn",
        "Application Name": "BCOTEST 001",
        "Application Owner": "hussain.hashimi@dpworld.com"
}

compression_enabled = true
cdn_endpoint_name   = "cdn-bcotest-001"
origin = {
  host_name  = "stcdnbcotest001.blob.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "cdn-bcotest-001-blob-core-windows-net"
}
origin_host_header = "stcdnbcotest001.blob.core.windows.net"
origin_path        = null