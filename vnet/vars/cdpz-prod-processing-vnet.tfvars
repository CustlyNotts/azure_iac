subscription_id     = <subscription_id>
resource_group_name     = "cdpz-prod-networking-rg"
name                    = "cdpz-prod-processing-vnet"
address_space           = ["10.220.216.0/23"]
create_default_peerings = false
subnets = [
  {
    name                      = "processing-default-snet"
    address_prefixes          = ["10.220.216.0/24"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id            = "/subscriptions/150e946b-38cb-4237-b8d0-2ac92b6174b6/resourceGroups/cdpz-prod-networking-rg/providers/Microsoft.Network/routeTables/cdpz-prod-networking-rt"
    network_security_group_id = "/subscriptions/150e946b-38cb-4237-b8d0-2ac92b6174b6/resourceGroups/cdpz-prod-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-prod-processing-nsg"
  },
  {
    name                      = "processing-dbw-public-snet"
    address_prefixes          = ["10.220.217.128/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/150e946b-38cb-4237-b8d0-2ac92b6174b6/resourceGroups/cdpz-prod-networking-rg/providers/Microsoft.Network/routeTables/cdpz-prod-networking-rt"
    network_security_group_id = "/subscriptions/150e946b-38cb-4237-b8d0-2ac92b6174b6/resourceGroups/cdpz-prod-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-prod-processing-nsg"
  },
  {
    name                      = "processing-dbw-private-snet"
    address_prefixes          = ["10.220.217.0/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/150e946b-38cb-4237-b8d0-2ac92b6174b6/resourceGroups/cdpz-prod-networking-rg/providers/Microsoft.Network/routeTables/cdpz-prod-networking-rt"
    network_security_group_id = "/subscriptions/150e946b-38cb-4237-b8d0-2ac92b6174b6/resourceGroups/cdpz-prod-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-prod-processing-nsg"
  }
]
peerings = {
  peering-to-vnetsechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
}