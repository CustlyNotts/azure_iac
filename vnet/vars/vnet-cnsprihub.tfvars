subscription_id     = <subscription_id>
resource_group_name = "rg-cnsprihubnw"
name                = "vnet-cnsprihub"
address_space       = ["10.222.4.0/24", "10.222.13.0/24"]
subnets = [
  {
    name             = "snet-cnsappgw"
    address_prefixes = ["10.222.13.0/24"]
    route_table_id   = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprihubnw/providers/Microsoft.Network/routeTables/route-cnspri-appgw"
  },
  {
    name             = "GatewaySubnet"
    address_prefixes = ["10.222.4.48/28"]
  },
  {
    name             = "snet-cnsprimgmt"
    address_prefixes = ["10.222.4.32/28"]
    route_table_id   = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-checkpointmgmt/providers/Microsoft.Network/routeTables/route-cnscp-syslog-to-vnetsechub"
  },
  {
    name             = "snet-cnsprifwfrontend"
    address_prefixes = ["10.222.4.0/28"]
    route_table_id   = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-checkpointappfw/providers/Microsoft.Network/routeTables/Route-CNSchk-WVD"
  },
  {
    name             = "snet-cnsprifwbackend"
    address_prefixes = ["10.222.4.16/28"]
  }
]
create_default_peerings = false
peerings = {
  cnsprihub-cnsnetwork = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"
    allow_gateway_transit     = true
  }
  cnsprihub-cnsdrhub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsdrhub"
  }
  peer-vnet-cnsprihub-to-vnetsechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  peer-vnet-wvd-01-to-vnet-cnsprihub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/RG-WVD-CNS/providers/Microsoft.Network/virtualNetworks/vnet-wvd-01"
  }
  VnetPeering-CNSHub-WVDall = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
  Vnet_WVD_DGA = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/RG_WVD_DGA/providers/Microsoft.Network/virtualNetworks/Vnet_WVD_DGA"
  }
  peer-cnsprihub-vnet-DTworld = {
    remote_virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-DTWorld"
  }
  cnsprihub-dtwwvd = {
    remote_virtual_network_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw"
  }
  vnetcnspridhub-vnetwordpressnonprod = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-wordpress-cns/providers/Microsoft.Network/virtualNetworks/Vnet-wordpress-nonprod"
    allow_gateway_transit     = true
  }
  vnetcnspridhub-vnetwordpressprod = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-wordpresscns-prod/providers/Microsoft.Network/virtualNetworks/Vnet-wordpress-prod"
    allow_gateway_transit     = true
  }
  Peer-EUR-K8-Docker = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-cpharmony-eur-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-eur-prod"
  }
  Peer-EUR-vnet-cnsprihub = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/RG-EUR-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-eur-cpperimeter81-prod"
  }
}
