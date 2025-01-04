subscription_id     = <subscription_id>
resource_group_name = "rg-dpw-llm-poc"
name                = "vnet-dpw-llm-poc"
use_ipam            = false
address_space       = ["10.220.76.0/23"]
subnets = [
  {
    name             = "snet-dpw-llm-poc-public-snet"
    address_prefixes = ["10.220.76.0/25"]
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },
  {
    name             = "snet-dpw-llm-poc-private-snet"
    address_prefixes = ["10.220.76.128/25"]
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },
  {
    name             = "snet-dpw-llm-poc-Private-endpoint"
    address_prefixes = ["10.220.77.0/25"]
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  }
]
#dns_servers             = ["10.254.10.7", "10.254.10.4"]
create_default_peerings = false # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "manish.aggarwal@dpworld.com",
  "ENV" : "POC",
  "Application Name" : "LLM on Databricks",
  "RITM" : "RITM0087964"
}