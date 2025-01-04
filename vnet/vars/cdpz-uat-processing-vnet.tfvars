subscription_id     = <subscription_id>
resource_group_name     = "cdpz-uat-networking-rg"
name                    = "cdpz-uat-processing-vnet"
use_ipam                = false
address_space           = ["10.220.208.0/23"]
create_default_peerings = true

subnets = [
  {
    name                      = "processing-default-snet"
    address_prefixes          = ["10.220.208.0/24"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id            = "/subscriptions/fdb528b2-0e6b-4fc5-b8a9-acc9a7ba3ff6/resourceGroups/cdpz-uat-networking-rg/providers/Microsoft.Network/routeTables/cdpz-uat-networking-rt"
    network_security_group_id = "/subscriptions/fdb528b2-0e6b-4fc5-b8a9-acc9a7ba3ff6/resourceGroups/cdpz-uat-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-uat-processing-nsg"
  },
  {
    name                      = "processing-dbw-private-snet"
    address_prefixes          = ["10.220.209.0/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/fdb528b2-0e6b-4fc5-b8a9-acc9a7ba3ff6/resourceGroups/cdpz-uat-networking-rg/providers/Microsoft.Network/routeTables/cdpz-uat-networking-rt"
    network_security_group_id = "/subscriptions/fdb528b2-0e6b-4fc5-b8a9-acc9a7ba3ff6/resourceGroups/cdpz-uat-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-uat-processing-nsg"
  },
  {
    name                      = "processing-dbw-public-snet"
    address_prefixes          = ["10.220.209.128/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/fdb528b2-0e6b-4fc5-b8a9-acc9a7ba3ff6/resourceGroups/cdpz-uat-networking-rg/providers/Microsoft.Network/routeTables/cdpz-uat-networking-rt"
    network_security_group_id = "/subscriptions/fdb528b2-0e6b-4fc5-b8a9-acc9a7ba3ff6/resourceGroups/cdpz-uat-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-uat-processing-nsg"
  }
]
tags = {
  "application" : "Central Data Platform",
  "cost_center" : "shared",
  "environment" : "uat",
  "purpose" : "processing",
  "uptime" : "on-demand",
  "Usage_Description" : "Central Data Platform Development"
}