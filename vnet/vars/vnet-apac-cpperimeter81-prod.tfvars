subscription_id     = <subscription_id>
resource_group_name = "RG-APAC-CP-Perimeter81"
name                = "vnet-apac-cpperimeter81-prod"
address_space       = ["10.205.8.32/28"]
subnets = [
  {
    name              = "snet-apac-cpperimeter81-prod"
    address_prefixes  = ["10.205.8.32/28"]
    service_endpoints = ["Microsoft.KeyVault"]
  }
]
peerings = {
  Peer-metallicgw_centralindia-prod-to-apac-perimeter = {
    remote_virtual_network_id = "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_centralindia-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_centralindia-prod"
    allow_forwarded_traffic   = true
    use_remote_gateways       = false
  }
}