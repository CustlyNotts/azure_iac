subscription_id     = <subscription_id>
resource_group_name      = "cargoes-staging"
nat_gateway_name         = "nat-foundation-nonprod"
nat_gw_sku               = "Standard"
nat_gateway_idle_timeout = 4
public_ip_ids            = ["/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/publicIPAddresses/nat-foundation-nonprod"]
subnet_ids               = []
create_public_ip         = false
public_ip_name           = "nat-foundation-nonprod"
allocation_method        = "Static"
pip_sku                  = "Standard"
tags = {
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "Non-PROD",
  "Application Name" : "Foundation Nonprod",
}