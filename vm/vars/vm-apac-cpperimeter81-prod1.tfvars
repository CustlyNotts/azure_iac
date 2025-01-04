subscription_id     = <subscription_id>
resource_group_name = "RG-APAC-CP-Perimeter81"
name                = "vm-apac-cpperimeter81-prod1"
image_os            = "linux"
size                = "Standard_DS3_V2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-apac-cpperimeter81-prod"
virtual_network_resource_group_name = "RG-APAC-CP-Perimeter81"
subnet_name                         = "snet-apac-cpperimeter81-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static",
      private_ip_address            = "10.205.8.37"
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
  "ENV"               = "Prod",
  "RITM"              = "RITM0077789"
}