subscription_id     = <subscription_id>
resource_group_name = "RG-ROS-NONPROD"
name                = "vm-ims-wms-integration-nonprod"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D2_v5"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "Vnet-ROS-NonProd"
virtual_network_resource_group_name = "rg-ros-nonprod"
subnet_name                         = "snet-ros-shared"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.171.145.10"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "ROS",
  "Application Owner" = "Tapabrata Dasgupta",
  "ENV"               = "DEV"
}

