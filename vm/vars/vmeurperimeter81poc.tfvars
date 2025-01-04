subscription_id     = <subscription_id>
resource_group_name = "rg-cp-perimeter81-poc"
name                = "vmeurperimeter81poc"
image_os            = "linux"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "EUR-Vnetsechub"
virtual_network_resource_group_name = "rg-eur-sechub"
subnet_name                         = "EUR_CP_P81_NW"
new_network_interface = {
  resource_group_name = "rg-eur-sechub"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static",
      private_ip_address            = "10.202.0.150"
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