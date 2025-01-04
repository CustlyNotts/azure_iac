subscription_id     = <subscription_id>
resource_group_name = "rg-ciscat-poc"
name                = "vm-ciscat-poc"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
virtual_network_name                = "vnetsechub"
virtual_network_resource_group_name = "rgnwsechub"
subnet_name                         = "snet-CIS-CAT-poc"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.154.24.29"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
    "Application Owner" : "Tayo Oyeyemi",
    "ENV" : "Dev",
    "Application Name" : "ciscat",
}