subscription_id     = <subscription_id>
resource_group_name = "rg_cargoesRunner_dev"
name                = "vm-dblag"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D4sv3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoesRunnernonprod"
virtual_network_resource_group_name = "rg_cargoesRunner_Vnet_nonprod"
subnet_name                         = "snet-wvd"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.153.228.167"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
