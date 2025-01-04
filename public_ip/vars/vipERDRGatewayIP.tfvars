subscription_id     = <subscription_id>
resource_group_name     = "rgexpcrctcns"
name                    = "vipERDRGatewayIP"
idle_timeout_in_minutes = 4
allocation_method       = "Dynamic"
sku                     = "Basic"
zones                   = []
location                = "ukwest"
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}
