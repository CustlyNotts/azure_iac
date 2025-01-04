subscription_id     = <subscription_id>
resource_group_name = "Rg-RostimaUAE-DR"
name                = "Vnet-RostimaUAE-DR"
use_ipam            = true
vnet_mask           = 25
subnets = [
  { name = "snet-rostimauae-dr", snet_mask = 25 },
  #{ name = "snet-test2", snet_mask = 27 }
  # { name = "snet-test3", snet_mask = 24 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "ENV" : "DR"
  "Application Name"  = "Rostima"
  "Application Owner" = "Hasaan Malik"
}