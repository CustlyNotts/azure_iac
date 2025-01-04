subscription_id     = <subscription_id>
resource_group_name = "rgadsyncprod"
name                = "vm-entracon-prod"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D4s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}
virtual_network_name                = "vnetdpwglb"
virtual_network_resource_group_name = "rgvnet"
subnet_name                         = "Production"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.253.0.22"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Fahim/Kapil",
  "ENV" : "PROD",
  "Application Name" : "EntraConnectSync",
  "RITM" : "RITM00000000"
}