subscription_id     = <subscription_id>
resource_group_name = "rg-mea-infra-prod"
name                = "vnet-mea-prod"
address_space       = ["10.170.96.0/19"]

peerings = {
  peer-vnet-mea-prod-metallic-UAE = {
    remote_virtual_network_id = "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uaenorth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaenorth-prod"
    allow_forwarded_traffic   = false
    allow_gateway_transit     = false
    use_remote_gateways       = false
  }
}


subnets = [
  {
    name              = "snet-akspod-mea-prod"
    address_prefixes  = ["10.170.96.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/routeTables/Route-akspod-mea-prod"
  },
  {
    name              = "snet-aksnode-mea-prod"
    address_prefixes  = ["10.170.104.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/routeTables/Route-aksnode-mea-prod"
  },
  {
    name              = "snet-internallb"
    address_prefixes  = ["10.170.106.0/25"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/routeTables/Route-internallb-mea-prod"
  },
  {
    name              = "snet-common"
    address_prefixes  = ["10.170.105.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/routeTables/Route-common-mea-prod"
  },
  {
    name             = "snet-aksnode-mea-prod-green"
    address_prefixes = ["10.170.107.0/24"]
    route_table_id   = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/routeTables/rt-snet-aksnode-mea-prod-green"
  },
  {
    name             = "snet-akspod-mea-prod-green"
    address_prefixes = ["10.170.112.0/21"]
    route_table_id   = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-prod/providers/Microsoft.Network/routeTables/rt-snet-akspod-mea-prod-green"
  }
]

/*
peerings = {
  
meaprod-sechub = {
    remote_virtual_network_id = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/Rg-Build/providers/Microsoft.Network/virtualNetworks/Vnet-Build"
  }
  
Peer-UAE-K8-Docker = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-cpharmony-uae-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-uae-prod"
  }
  connect-to-tf-vm-vnet = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.Network/virtualNetworks/vnet-infrateam"
  }

  connect-to-tf-vm-vnet = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
  }
}
*/
