subscription_id     = <subscription_id>
resource_group_name = "rg-ecommerce-infra-prod-dr"
location            = "East Asia"
lb_name             = "lb-solr-prd-dr"
sku_name            = "Standard"
zones = ["1", "2", "3"]
lb_frontend_ip_configurations = {
  lb-fe-ip = {
    name = "lb-fe-ip"
    subnet_id                     = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod-dr/subnets/snet-ecommerce-prod-dr"
    private_ip_address            = "10.165.160.12"
    private_ip_address_allocation = "Dynamic"
  }
}

backend_address_pools = {
  solr-slave-vms = {
    name = "solr-slave-vms"
  }
}




tags = {
     "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Shaloof/vishank",
        "ENV": "DR"
}