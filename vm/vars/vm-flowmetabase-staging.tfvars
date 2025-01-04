subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflow-dev"
name                = "vm-flowmetabase-staging"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoesflow-dev"
virtual_network_resource_group_name = "rg-cargoesflow-infra"
subnet_name                         = "snet-nonaks-dev"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static",
      private_ip_address            = "10.243.12.18"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

