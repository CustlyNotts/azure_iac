subscription_id     = <subscription_id>
resource_group_name = "rg-infralab-network"
name                = "vnet-test-lab"
use_ipam            = true
vnet_mask           = 24
subnets = [
  { name = "snet-test-lab-1", snet_mask = 28, delegation = "Microsoft.DBforPostgreSQL/flexibleServers" },
  { name = "snet-test-lab-2", snet_mask = 28, delegation = "Microsoft.Web/serverFarms" },
  { name = "snet-test-lab-3", snet_mask = 28 },
  { name = "snet-test-lab-4", snet_mask = 28 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
sechub_enabled = true
route_default = true