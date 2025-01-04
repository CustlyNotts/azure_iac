subscription_id     = <subscription_id>
resource_group_name     = "rg-cargoescustoms-svc-infra-prod-dr"
name                = "vnet-cargoescustoms-svc-prod-dr"
use_ipam            = true
vnet_mask           = 19
subnets = [
  { name = "snet-akspod-cargoescustoms-svc-prd-dr", snet_mask = 21, delegation = "Microsoft.ContainerService/managedClusters", route_table_id = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod-dr"},
  { name = "snet-psql-cargoescustoms-svc-prd-dr", snet_mask = 26, delegation = "Microsoft.DBforPostgreSQL/flexibleServers", route_table_id = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod-dr" },
  { name = "snet-bastion-cargoescustoms-svc-prd-dr", snet_mask = 27, route_table_id = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod-dr" },
  { name = "snet-aksnode-cargoescustoms-svc-prd-dr", snet_mask = 23, route_table_id = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod-dr/providers/Microsoft.Network/routeTables/rt-cargoescustoms-svc-prod-dr"},
  { name = "snet-plink-cargoescustoms-svc-prd-dr", snet_mask = 27 }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
peerings = {
  vnetsechu-cargoesprod = {
    remote_virtual_network_id = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod"
  }
  Metallic-UAECentral = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-metallicgw_uaecentral-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaecentral-prod"
  }
}
tags = {
  "Application Owner" : "Vijahat Trunboo",
  "ENV" : "DR",
  "Application Name" : "Cargoes Customs",
  "RITM" : "RITM0046197"
}