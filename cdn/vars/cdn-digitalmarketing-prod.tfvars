subscription_id     = <subscription_id>
name                = "cdn-digitalemail-prod"
resource_group_name = "rg-digitalemail-prod"
sku                 = "Standard_Microsoft"
location            = "Global"
tags = {
  "Application Owner" : "Bilal Adham",
  "ENV" : "PROD",
  "Application Name" : "Digital Marketing",
  "RITM" : "RITM0090611"
}
compression_enabled = true
cdn_endpoint_name   = "accountspreprod"
origin = {
  host_name  = "stdigitalmarketingprod.blob.core.windows.net"
  http_port  = 80
  https_port = 443
  name       = "stdigitalmarketingprod.blob.core.windows.net"
}
origin_host_header = "stdigitalmarketingprod.blob.core.windows.net"
origin_path        = null