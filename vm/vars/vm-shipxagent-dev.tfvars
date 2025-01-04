subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipx-dev"
name                = "vm-shipxagent-dev"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoesshipx-dev"
virtual_network_resource_group_name = "rg-cargoesshipxdev-infra"
subnet_name                         = "snet-compute-dev"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.2.8.10"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Shipx",
  "Application Owner" = "Shiv Suthar",
  "ENV"               = "Dev"
}

