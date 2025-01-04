subscription_id     = <subscription_id>
resource_group_name     = "rg-cnsprihubnw"
name                    = "vipERPRIHUBGatewayIP"
allocation_method       = "Dynamic"
idle_timeout_in_minutes = 4
sku                     = "Basic"
zones                   = []
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}
