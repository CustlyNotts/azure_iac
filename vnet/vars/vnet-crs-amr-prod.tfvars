subscription_id     = <subscription_id>
resource_group_name = "rg-crs-amr-prod"
name                = "vnet-crs-amr-prod"
use_ipam            = false
address_space       = ["10.154.24.0/22"]
#create_default_peerings = false
dns_servers             = ["10.1.0.132"]
subnets = [
  {
    name             = "snet-crs-amr-prod"
    address_prefixes = ["10.154.24.0/24"]
    service_endpoints = ["Microsoft.Sql"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/routeTables/rt-crs-prod"
  },
  {
    name             = "snet-crs-amr-sql-prod"
    address_prefixes = ["10.154.25.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/routeTables/rt-crs-prod"
  },
    {
    name             = "snet-crs-functions-amr-prod"
    address_prefixes = ["10.154.26.0/28"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage"]
  }
]
tags = {
  "Application Owner" : "Moinudeen AliAzad",
  "ENV" : "PROD",
  "Application Name" : "CRS application Americas Region",
  "RITM" : "RITM0074474"
}



peerings = {
  
Peer-AMR-sechub = {
    remote_virtual_network_id = "/subscriptions/552154ff-433b-4cb2-bfa6-9d1c7249ef1f/resourceGroups/rg-amr-sechub/providers/Microsoft.Network/virtualNetworks/AMR-Vnetsechub"
  },

Peer-AMR-vnet-crs-amr-prod = {
    remote_virtual_network_id = "/subscriptions/552154ff-433b-4cb2-bfa6-9d1c7249ef1f/resourceGroups/RG-AMR-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-amr-cpperimeter81-prod"
  },
peer-vnet-amr-adds = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgadds/providers/Microsoft.Network/virtualNetworks/vnet-amr-adds"
    allow_forwarded_traffic      = false
  },
peer-sql-crs-amr-prod-to-metallic = {
    remote_virtual_network_id = "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_canadacentral-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_canadacentral-prod"
    allow_forwarded_traffic      = false
  }


}