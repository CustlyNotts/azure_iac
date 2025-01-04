subscription_id     = <subscription_id>
resource_group_name = "Rg-P81-testbed"
name                = "p81testvmubuntu"
image_os            = "linux"
size                = "Standard_DS3_V2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-P81-test-vms"
virtual_network_resource_group_name = "Rg-P81-testbed"
subnet_name                         = "P81testVM"
new_network_interface = {
  resource_group_name = "Rg-P81-testbed"
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic",
      private_ip_address            = ""
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
source_image_reference = {
  publisher = "canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts-gen2"
  version   = "latest"
}
tags = {
  "Application Name"  = "CP-Perimeter81",
  "Application Owner" = "Kiran Sivaraman",
  "ENV"               = "Dev"
}