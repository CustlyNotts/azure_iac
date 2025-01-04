subscription_id     = <subscription_id>
cdn_profile_name    = "accountspreprod"
resource_group_name = "rg-accountspreprod"
sku                 = "Standard_Microsoft"
location            = "Global"
querystring_caching_behaviour = "IgnoreQueryString"
endpointtags = {
        "Application Name": "Accounts",
        "Application Owner": "Chinnayya Nalla",
        "ENV": "PREPROD"
}
tags = {
        "Application Name": "Accounts",
        "Application Owner": "Chinnayya Nalla",
        "ENV": "PREPROD"
}

compression_enabled = true
cdn_endpoint_name   = "accountspreprod"
origin = {
  host_name  = "staccountspreprod.z1.web.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "staccountspreprod-z1-web-core-windows-net"
}
origin_host_header = "staccountspreprod.z1.web.core.windows.net"
origin_path        = null


#global_delivery_rule


