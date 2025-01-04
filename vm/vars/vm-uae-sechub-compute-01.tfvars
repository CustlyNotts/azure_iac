subscription_id     = <subscription_id>
resource_group_name = "rg-uaesechub-automation"
name                = "vm-uae-automation-01"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnetsechub"
virtual_network_resource_group_name = "rgnwsechub"
subnet_name                         = "dpw_mg_cp"
new_network_interface = {
  ip_configurations = [
    {
      name                          = "vm-uae-automation-ipconfig"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.254.4.8"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Shared Security Hub Automation",
  "Application Owner" = "Muhammad Tariq",
  "ENV"               = "PROD"
}
