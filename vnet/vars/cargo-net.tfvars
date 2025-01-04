subscription_id     = <subscription_id>
resource_group_name = "wmc"
name                = "cargo-net"
address_space       = ["10.247.0.0/16"]
subnets = [
  {
    name             = "default"
    address_prefixes = ["10.247.1.0/24"]
  },
  {
    name             = "GatewaySubnet"
    address_prefixes = ["10.247.255.242/27"]
  }
]