subscription_id     = <subscription_id>
resource_group_name     = "cdmz-networking-rg"
name                    = "cdmz-management-vnet"
address_space           = ["10.220.224.0/23"]
create_default_peerings = false
subnets = [
  {
    name                      = "management-default-snet"
    address_prefixes          = ["10.220.224.0/24"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id            = "/subscriptions/7fafdbc0-65a3-4508-a1da-2bbbdbc2299b/resourceGroups/cdmz-networking-rg/providers/Microsoft.Network/routeTables/cdmz-management-rt"
    network_security_group_id = "/subscriptions/7fafdbc0-65a3-4508-a1da-2bbbdbc2299b/resourceGroups/cdmz-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdmz-management-nsg"
  },
  {
    name                      = "management-dbw-private-snet"
    address_prefixes          = ["10.220.225.0/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/7fafdbc0-65a3-4508-a1da-2bbbdbc2299b/resourceGroups/cdmz-networking-rg/providers/Microsoft.Network/routeTables/cdmz-management-rt"
    network_security_group_id = "/subscriptions/7fafdbc0-65a3-4508-a1da-2bbbdbc2299b/resourceGroups/cdmz-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdmz-management-nsg"
  },
  {
    name                      = "management-dbw-public-snet"
    address_prefixes          = ["10.220.225.128/25"]
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Storage"]
    delegation                = "Microsoft.Databricks/workspaces"
    route_table_id            = "/subscriptions/7fafdbc0-65a3-4508-a1da-2bbbdbc2299b/resourceGroups/cdmz-networking-rg/providers/Microsoft.Network/routeTables/cdmz-management-rt"
    network_security_group_id = "/subscriptions/7fafdbc0-65a3-4508-a1da-2bbbdbc2299b/resourceGroups/cdmz-networking-rg/providers/Microsoft.Network/networkSecurityGroups/cdmz-management-nsg"
  }
]
peerings = {
  peering-to-vnetsechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
}