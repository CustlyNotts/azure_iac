subscription_id     = <subscription_id>
resource_group_name = "rg-metaverse-prod"
name                = "vnet-metaverse-prod"
address_space       = ["10.7.16.0/20"]
subnets = [
  {
    name             = "snet-aksmetaverse-prod"
    address_prefixes = ["10.7.16.0/21"]
  },
  {
    name             = "snet-psqlflexible-prod"
    address_prefixes = ["10.7.24.0/25"]
    delegation       = "Microsoft.DBforPostgreSQL/flexibleServers"
  }
]

tags = {
  "Application Name"  = "Metaverse",
  "Application Owner" = "Harsh Jain",
  "ENV"               = "PROD",
  "X-IPAM-RES-ID"     = "AMyNFyNzBFJ3UmqCLvRXWo"
}