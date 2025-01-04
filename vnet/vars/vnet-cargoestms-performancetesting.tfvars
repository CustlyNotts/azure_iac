subscription_id     = <subscription_id>
resource_group_name = "rg-cargoestmsperfomancetesting"
name                = "vnet-cargoestms-performancetesting"
use_ipam            = true
vnet_mask           = 24
subnets = [
  {
    name      = "snet-compute-performancetesting"
    snet_mask = 25
  }
]
create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Cargoes TMS Perfomance Testing",
  "Application Owner" : "Ritesh Singh",
  "ENV" : "Prod"
  "RITM" : "RITM0102795"
}