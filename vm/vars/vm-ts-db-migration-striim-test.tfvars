subscription_id     = <subscription_id>
resource_group_name = "rg-trackingservice-dev"
name                = "vm-ts-db-migration-striim-test"
image_os            = "linux"
#os_simple           = "UbuntuServer"
size = "Standard_D8s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}
virtual_network_name                = "Vnet-trackingservice-dev"
virtual_network_resource_group_name = "rg-trackingservice-dev-infra"
subnet_name                         = "snet-nonaks-dev"
new_network_interface = {
  resource_group_name = "rg-trackingservice-dev-infra"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.143.43.0"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

source_image_reference = {
  publisher = "canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}
tags = {
  "Application Name"  = "Tracking Service",
  "Application Owner" = "Mohit Lal",
  "ENV"               = "Test"
}

