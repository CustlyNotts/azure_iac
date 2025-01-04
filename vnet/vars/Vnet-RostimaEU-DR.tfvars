subscription_id     = <subscription_id>
resource_group_name = "rg-crs-eur-dr"
name                = "Vnet-RostimaEU-DR"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-rostimaeu-dr", snet_mask = 25 },
  #{ name = "snet-test2", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "ENV" : "EU DR"
  "Application Name"  = "Rostima"
  "Application Owner" = "Hasaan Malik"
}