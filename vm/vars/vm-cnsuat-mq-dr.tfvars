subscription_id     = <subscription_id>
resource_group_name = "rg-cnsuat-dr"
name                = "vm-cnsuat-mq-dr"
image_os            = "linux"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cns-dr"
virtual_network_resource_group_name = "rg-cns-infra-dr"
subnet_name                         = "snet-common-dr"
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
 "Application Name"  = "CCS-CNS",
 "Application Owner" = "Daniel Stuart"
 "ENV"               = "DR"
 "RITM"              = "RITM0124306"  
}

