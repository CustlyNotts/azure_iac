subscription_id     = <subscription_id>
resource_group_name = "rg-global-elastic-infra"
name                = "vnet-sechub-elasticsearch"
address_space       = ["10.2.5.0/24"]
subnets = [
  {
    name             = "snet-elasticsearch"
    address_prefixes = ["10.2.5.0/25"]
    route_table_id   = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-global-elastic-infra/providers/Microsoft.Network/routeTables/rt-sechhub-elasticsearch"
  }
]
tags = {
  "X-IPAM-RES-ID" : "aAcX2mEta6sKzjhRdkZYPh"
}