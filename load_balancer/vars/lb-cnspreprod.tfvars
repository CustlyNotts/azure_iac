subscription_id     = <subscription_id>
resource_group_name = "rg-cnspreprod"
location            = "uk south"
lb_name             = "lb-cnspreprod"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  pip-cnspreprod-lb = {
    subnet_id                     = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnspreprod-ilb"
    private_ip_address            = "172.22.137.21"
    private_ip_address_allocation = "Dynamic"
  }
}

backend_address_pools = {
  bp-cnspreprod = {
    name = "bp-cnspreprod"
  }
}


tags = {
  "Application Owner" : "Daniel/Sachin",
  "Application Name" : "Mawani CNS",
  "ENV" : "DEV"
}