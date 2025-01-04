subscription_id     = <subscription_id>
resource_group_name      = "rg-BlockchainUAEstaging"
nat_gateway_name         = "nat-blockchain-nonprod"
nat_gw_sku               = "Standard"
nat_gateway_idle_timeout = 4
public_ip_ids            = ["/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-BlockchainUAEstaging/providers/Microsoft.Network/publicIPAddresses/pip-cblockchain-nonprod"]
subnet_ids               = []
create_public_ip         = false
public_ip_name           = "pip-cblockchain-nonprod"
allocation_method        = "Static"
pip_sku                  = "Standard"
tags = {
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "Non-PROD",
  "Application Name" : "Blockchain Nonprod",
}