subscription_id     = <subscription_id>
resource_group_name = "rg-TrackingService-APIM-NonProd"
name                = "vnet-trackingservice-apim-nonprod"
use_ipam            = true
vnet_exist          = true
vnet_mask           = 27
subnets = [
  { name = "snet-ts-apim-nonprod", snet_mask = 28 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Mohit/Ankit.K",
  "ENV" : "Non-Prod",
  "Application Name" : "Tracking Service",
  # "RITM" : "RITM0068997"
}
