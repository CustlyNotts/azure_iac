subscription_id     = <subscription_id>
resource_group_name = "RG-CARGOESLOGISTICS-PROD"
name                = "vm-cargoeslogisticsbuild-prod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}
virtual_network_name                = "vnet-cargoeslogistics-prod"
virtual_network_resource_group_name = "rg-cargoeslogistics-infra-prod"
subnet_name                         = "snet-logistics-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.242.42.4"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

