subscription_id     = <subscription_id>
resource_group_name = "rg-wms-prod"
name                = "vm-wmsagent-prod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-wms-prod"
virtual_network_resource_group_name = "rg-wms-infra-prod"
subnet_name                         = "snet-wms-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.96.11"
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
  "ENV"               = "Prod"
}

