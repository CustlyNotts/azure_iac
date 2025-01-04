subscription_id     = <subscription_id>
resource_group_name = "rg-creds-test"
name                = "vnet-creds-test"
use_ipam            = true
vnet_mask           = 22
subnets = [
  { name = "snet-creds-test-psql", snet_mask = 24, delegation = "Microsoft.DBforPostgreSQL/flexibleServers" }  
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Created By" : "Ayodele Orebe"
}