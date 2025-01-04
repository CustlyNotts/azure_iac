subscription_id     = <subscription_id>
resource_group_name = "rg-dpw-uae-pri-mgmt"
name                = "vnet-dpw-uae-ssh-pri-mgmt"
address_space       = ["10.11.12.0/24"]
subnets = [
  {
    name             = "sn-uae-ssh-cp-pri-mds"
    address_prefixes = ["10.11.12.0/27"]
  }
]
tags = {
  "X-IPAM-RES-ID" : "3KXajPD44T6LTnMB2WCyQb"
}