subscription_id     = <subscription_id>
resource_group_name  = "rg-crrappgw"
name                 = "vnet-crrappgw"
address_space        = ["10.222.193.0/25"]
create_default_peerings = false
subnets              = [
  {
    name                      = "snet-crrappgw"
    address_prefixes          = ["10.222.193.0/25"]
    service_endpoints         = ["Microsoft.Storage"]
  }
]
