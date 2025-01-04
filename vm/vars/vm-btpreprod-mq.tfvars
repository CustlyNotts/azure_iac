subscription_id     = <subscription_id>
resource_group_name = "rg-bt-preprod"
name                = "vm-btpreprod-mq"
image_os            = "linux"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-btnwhub"
virtual_network_resource_group_name = "rg-btnwhub"
subnet_name                         = "snet-bt-preprod"
#new_network_interface = {
  # ip_configurations = [
  #   {
  #     private_ip_address_allocation = "Static"
  #     private_ip_address            = "10.222.254.4"
  #   }
  # ]
#}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

source_image_reference = {
  publisher = "canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}

tags = {
 "Application Name"  = "CCS-Bharat Trade",
 "Application Owner" = "Daniel Stuart"
 "ENV"               = "TESTING"
 "RITM"              = "RITM0106320"  
}

