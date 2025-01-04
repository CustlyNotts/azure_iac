subscription_id     = <subscription_id>
resource_group_name      = "cnsnw"
nat_gateway_name         = "nat-cns-gateway"
nat_gw_sku               = "Standard"
nat_gateway_idle_timeout = 4
public_ip_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/publicIPAddresses/public-cns-natgateway"]
subnet_ids               = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/UAT1"]
create_public_ip         = false
public_ip_name           = "public-cns-natgateway"
allocation_method        = "Static"
pip_sku                  = "Standard"
tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
  "ENV" : "PROD"
}