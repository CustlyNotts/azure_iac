subscription_id     = <subscription_id>
resource_group_name = "Rgnauuat"
name                = "vm-nauagent-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "Vnetnauuat"
virtual_network_resource_group_name = "Rgnauuat"
subnet_name                         = "snet-nau-shared"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.236.15.15"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "NAU"
  "Application Owner" = "Ibrahim Ali Al-Ali"
  "ENV"               = "NONPROD"
}
