subscription_id     = <subscription_id>
resource_group_name = "rg-ecommerce-infra-prod"
location            = "uaenorth"
lb_name             = "lb-solr-prd"
sku_name            = "Standard"
zones = ["1", "2", "3"]
lb_frontend_ip_configurations = {
  lb-fe-ip = {
    name = "lb-fe-ip"
    subnet_id                     = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-ecommerce-prod"
    private_ip_address            = "10.165.106.28"
    private_ip_address_allocation = "Dynamic"
  }
}

backend_address_pools = {
  slave-solr-pool = {
    name = "slave-solr-pool"
  }
}




tags = {
        "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Shaloof/Kamlesh",
        "ENV": "DEV"

}