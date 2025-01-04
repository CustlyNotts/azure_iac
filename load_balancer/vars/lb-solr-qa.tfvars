subscription_id     = <subscription_id>
resource_group_name = "rg-ecommercesolr-dev"
location            = "uaenorth"
lb_name             = "lb-solr-qa"
sku_name            = "Standard"
zones = ["1", "2", "3"]
lb_frontend_ip_configurations = {
  FE-IP = {
    name = "FE-IP"
    subnet_id                     = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-ecommerce-dev"
    private_ip_address            = "10.165.84.26"
    private_ip_address_allocation = "Dynamic"
  }
}

backend_address_pools = {
  BE-POOl = {
    name = "BE-POOl"
  }
}




tags = {
       "Application Name": "Solr",
        "Application Owner": "Shaloof/Kamlesh",
        "ENV": "DEV"
}