subscription_id     = <subscription_id>
resource_group_name = "rg-wms-nonprod"
name                = "vm-wmsagent-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-wms-nonprod"
virtual_network_resource_group_name = "rg-wms-infra-nonprod"
subnet_name                         = "snet-wms-nonprod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.128.11"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Warehouse Management System",
  "Application Owner" = "Sandeep Gupta",
  "ENV"               = "NonProd"
}

