subscription_id     = <subscription_id>
resource_group_name = "rg-cargoes-boomi-nonprod"
name                = "vnet-cargoes-boomi-nonprod"
address_space       = ["10.139.8.0/21"]
subnets = [
  {
    name              = "snet-cargoes-boomi-nonprod"
    address_prefixes  = ["10.139.8.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/82e3e8d8-3e5b-42e4-87cf-be360dbacb3a/resourceGroups/rg-cargoes-boomi-nonprod/providers/Microsoft.Network/routeTables/route-boomicargoes"
  }
]
peerings = {
  vnet-cargoes-boomi-nonprod-to-vnet-cargoes-boomi-cvo = {
    remote_virtual_network_id = "/subscriptions/82e3e8d8-3e5b-42e4-87cf-be360dbacb3a/resourceGroups/rg-cargoes-boomi-cvo/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-boomi-cvo"
  }
  CargoesBoominonprod-to-CargoesBoomiAPIMnonprod = {
    remote_virtual_network_id = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/Rg-Cargoes-APIM-NonProd/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-boomi-apim-nonprod"
  }
}