subscription_id     = <subscription_id>
resource_group_name = "rg-cargoestms-nonprod"
name                = "vm-cargoestmsagent-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoestms-nonprod"
virtual_network_resource_group_name = "rg-cargoestms-nonprod-infra"
subnet_name                         = "snet-cargoestms-nonprod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.32.11"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Cargoes Transportation Management System",
  "Application Owner" = "Shiv Suthar/Ritesh Singh",
  "ENV"               = "NonProd"
}

