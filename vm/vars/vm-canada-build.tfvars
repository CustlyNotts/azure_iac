subscription_id     = <subscription_id>
resource_group_name = "rg-cargoescanadahub-build"
name                = "vm-canada-build"
image_os            = "linux"
size                = "Standard_D2s_V3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoescanada-build"
virtual_network_resource_group_name = "rg-cargoescanadahub-build"
subnet_name                         = "snet-mgmt"
# new_network_interface = {
#  ip_configurations = [
#    {
#      private_ip_address_allocation = "Static",
#      private_ip_address            = "10.205.8.37"
#    }
#  ]
#}
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
  "Application Name"  = "CCS-Canada",
  "Application Owner" = "Daniel Stuart",
  "ENV"               = "PROD",
  "RITM"              = "RITM0103462"
}