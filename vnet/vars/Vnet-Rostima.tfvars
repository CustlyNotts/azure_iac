subscription_id     = <subscription_id>
resource_group_name = "Rg-Vnet"
name                = "Vnet-Rostima"
use_ipam            = false
address_space       = ["10.154.4.0/22", "10.154.17.0/24"]
create_default_peerings = false
dns_servers             = ["10.254.9.4", "10.254.9.6"]
subnets = [
  {
    name             = "Snet_Rostima_Prod"
    address_prefixes = ["10.154.4.0/24"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Network/routeTables/Route_Rostima_Prod"
    service_endpoints = ["Microsoft.Storage", "Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Web"]
  },
  {
    name             = "Snet_Rostering_External"
    address_prefixes = ["10.154.5.0/25"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgrosteringddwuae/providers/Microsoft.Network/routeTables/Route-rosteringddwuae"
    service_endpoints = ["Microsoft.Storage"]
  },
   {
    name             = "Snet_Rostima_Dev"
    address_prefixes = ["10.154.5.128/25"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostimadev/providers/Microsoft.Network/routeTables/route-rostimadev"
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name             = "Snet_Rostima_UAT"
    address_prefixes = ["10.154.6.0/24"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostimauat/providers/Microsoft.Network/routeTables/route-rostimauat"
    service_endpoints = ["Microsoft.Storage"]
  },
   {
    name             = "Snet_Rostima_Preprod"
    address_prefixes = ["10.154.7.0/24"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostimauat/providers/Microsoft.Network/routeTables/route-rostimauat"
    service_endpoints = ["Microsoft.Storage"]
  }
]


peerings = {
  

Vnetglbsechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  },

Peer-UAE-MetallicBackup = {
    remote_virtual_network_id = "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uaenorth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaenorth-prod"
  },
Peer-UAE-Vnet-Rostima = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"

  },
peer-Vnet-rostima-to-APAC-Sechub = {
    remote_virtual_network_id = "/subscriptions/2829b90f-e2a6-45f3-bcf7-35f4923df4e7/resourceGroups/rg-apac-sechub/providers/Microsoft.Network/virtualNetworks/APAC-Vnetsechub"
    allow_forwarded_traffic   = false
  }


}
