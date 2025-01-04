subscription_id     = <subscription_id>
resource_group_name     = "cdpz-dev-networking-rg"
name                    = "cdpz-dev-processing-vnet"
address_space           = ["10.220.200.0/23"]
create_default_peerings = false
subnets = [
  {
    name                      = "processing-default-snet"
    address_prefixes          = ["10.220.200.0/24"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id            = "/subscriptions/ef11c9cc-9499-4f00-821a-e9f262f569c0/resourceGroups/cdpz-dev-networking-rg/providers/Microsoft.Network/routeTables/cdpz-dev-networking-rt"
    network_security_group_id = "/subscriptions/ef11c9cc-9499-4f00-821a-e9f262f569c0/resourceGroups/cdpz-dev-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-dev-processing-nsg"
  },
  {
    name                      = "processing-dbw-private-snet"
    address_prefixes          = ["10.220.201.0/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/ef11c9cc-9499-4f00-821a-e9f262f569c0/resourceGroups/cdpz-dev-networking-rg/providers/Microsoft.Network/routeTables/cdpz-dev-networking-rt"
    network_security_group_id = "/subscriptions/ef11c9cc-9499-4f00-821a-e9f262f569c0/resourceGroups/cdpz-dev-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-dev-processing-nsg"
  },
  {
    name                      = "processing-dbw-public-snet"
    address_prefixes          = ["10.220.201.128/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/ef11c9cc-9499-4f00-821a-e9f262f569c0/resourceGroups/cdpz-dev-networking-rg/providers/Microsoft.Network/routeTables/cdpz-dev-networking-rt"
    network_security_group_id = "/subscriptions/ef11c9cc-9499-4f00-821a-e9f262f569c0/resourceGroups/cdpz-dev-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdpz-dev-processing-nsg"
  }
]
peerings = {
  peering-to-vnetsechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
}