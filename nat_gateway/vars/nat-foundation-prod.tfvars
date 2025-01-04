subscription_id     = <subscription_id>
resource_group_name      = "cargoes-prod"
nat_gateway_name         = "nat-foundation-prod"
nat_gw_sku               = "Standard"
nat_gateway_idle_timeout = 4
public_ip_ids            = ["/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/cargoes-prod/providers/Microsoft.Network/publicIPAddresses/nat-foundation-prod"]
subnet_ids               = []
create_public_ip         = false
public_ip_name           = "nat-foundation-prod"
allocation_method        = "Static"
pip_sku                  = "Standard"
tags = {
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "PROD",
  "Application Name" : "Foundation Nonprod",
}