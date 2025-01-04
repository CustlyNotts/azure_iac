subscription_id     = <subscription_id>
resource_group_name = "rg-metaverse-nonprod"
name                = "vm-metabasebuild-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-metaverse-nonprod"
virtual_network_resource_group_name = "rg-network-nonprod"
subnet_name                         = "snet-metaverse-nonprod"
disable_password_authentication     = false
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.148.0.12"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}