subscription_id     = <subscription_id>
resource_group_name     = "rg-oee-mearo-pip-prod"
name                    = "pip-mearo-prod-01"
allocation_method       = "Static"
idle_timeout_in_minutes = 4
sku                     = "Standard"
zones                   = []
tags = {
  "Application Name" : "MoU PIP",
  "Application Owner" : "Senthoor Ramasamy",
  "ENV" : "PROD",
  "RITM" : "RITM0096337"
}