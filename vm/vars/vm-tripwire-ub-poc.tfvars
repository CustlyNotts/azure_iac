subscription_id     = <subscription_id>
resource_group_name = "rg-tripwire-dev"
name                = "vm-tripwire-ub-poc"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
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
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

tags = {
    "Application Owner" : "Tayo Oyeyemi",
    "ENV" : "POC",
    "Application Name" : "Tripwire",
    "RITM" : "RITM0102640"
    "OsPatching" : "NonProd"  
}