subscription_id     = <subscription_id>
resource_group_name = "rg-searates-avd"
name                = "vnet-searates-avd"
use_ipam            = false
address_space       = ["10.237.100.64/26"]
subnets = [
  {
    name             = "snet-searates-avd"
    address_prefixes = ["10.237.100.64/26"]
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  }
]
dns_servers             = ["10.254.10.7", "10.254.10.4"]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Mohammed Abdul Wadood",
  "ENV" : "PROD",
  "Application Name" : "Searates AVD",
  "RITM" : "RITM0077298"
}