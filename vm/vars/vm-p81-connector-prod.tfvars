subscription_id     = <subscription_id>
resource_group_name = "rg-p81-connector-prod"
name                = "p81connectorvmubuntu"
image_os            = "linux"
size                = "Standard_DS3_V2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-p81-connector-prod"
virtual_network_resource_group_name = "rg-p81-connector-prod"
subnet_name                         = "snet-p81-connector-prod"
new_network_interface = {
  resource_group_name = "rg-p81-connector-prod"
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic",
      private_ip_address            = ""
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
source_image_reference = {
  publisher = "canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts-gen2"
  version   = "latest"
}
tags = {
  "Application Name"  = "P81 Connector",
  "Application Owner" = "Kiran Sivaraman/Nelson Chieki",
  "ENV"               = "PROD"
  "Created By"        = "Ayodele Orebe"
}