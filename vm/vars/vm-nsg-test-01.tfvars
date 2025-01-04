subscription_id     = <subscription_id>
resource_group_name = "rg-nsg-testing"
name                = "vm-nsg-test-01"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-nsg-testing"
virtual_network_resource_group_name = "rg-nsg-testing"
subnet_name                         = "snet-01"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.6.10"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

