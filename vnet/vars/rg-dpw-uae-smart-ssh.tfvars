subscription_id     = <subscription_id>
resource_group_name = "rg-dpw-uae-smart-ssh"
name                = "vnet-dpw-uae-smart-ssh"
address_space       = ["10.216.0.0/21"]
subnets = [
  {
    name             = "sn-uae-cpint-fw-blu-fe"
    address_prefixes = ["10.216.0.0/27"]
  }
]
tags = {
  "X-IPAM-RES-ID" : "4Y29mqvYN5fZ52GfgnN7kF"
}