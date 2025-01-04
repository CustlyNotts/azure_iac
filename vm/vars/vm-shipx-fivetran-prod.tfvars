subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipx-dr"
name                = "vm-shipx-fivetran-prod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoesshipx-dr"
virtual_network_resource_group_name = "rg-cargoesshipxdr-infra"
subnet_name                         = "snet-shipxcompute-dr"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.64.0.10"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
