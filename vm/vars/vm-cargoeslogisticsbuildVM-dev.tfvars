subscription_id     = <subscription_id>
resource_group_name = "RG-CARGOESLOGISTICSPLATFORM-DEV"
name                = "vm-cargoeslogisticsbuildVM-dev"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}
virtual_network_name                = "vnet-cargoesLogisitics_dev"
virtual_network_resource_group_name = "rg-cargoeslogisticsdev-infra"
subnet_name                         = "snet-nonprod-dev"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.242.0.7"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

