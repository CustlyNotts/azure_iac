subscription_id     = <subscription_id>
resource_group_name = "rg-ecommercesolr-preprod"
location            = "uaenorth"
lb_name             = "lb-solr-preprod"
sku_name            = "Basic"
#zones = ["1", "2", "3"]
lb_frontend_ip_configurations = {
  frontendip = {
    name = "frontendip"
    subnet_id                     = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-ecommerce-preprod"
    private_ip_address            = "10.165.86.11"
    private_ip_address_allocation = "Dynamic"
  }
}

backend_address_pools = {
  solr-backend-slave = {
    name = "solr-backend-slave"
  }
}




tags = {
        "Application Name": "Solr",
        "Application Owner": "Shaloof/Kamlesh",
        "ENV": "PREPROD"
}