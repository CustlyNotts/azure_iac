subscription_id     = "039efcb8-56e2-459b-ad3c-68c086e8feb9"
resource_group_name = "RG-ECOMMERCE-DEV"
name                = "vm-ecommomsfivetran-nonprod"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
image_os            = "linux"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  disk_size_gb         = "30"
}
virtual_network_name                = "vnet-ecommerce-nonprod"
virtual_network_resource_group_name = "rg-ecommerce-infra-nonprod"
subnet_name                         = "snet-ecommerce-dev"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Name" : "Ecommerce",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}
