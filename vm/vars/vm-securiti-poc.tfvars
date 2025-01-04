subscription_id     = <subscription_id>
resource_group_name = "rg-sec-dataprivacy-poc"
name                = "vm-securiti-poc"
image_os            = "linux"
#os_simple           = "UbuntuServer"
vm_os_publisher = "canonical"
vm_os_offer     = "UbuntuServer"
vm_os_sku       = "20_04-lts-gen2"
size            = "Standard_D4s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
  disk_size_gb         = "128"
}
virtual_network_name                = "vnetsechub"
virtual_network_resource_group_name = "rgnwsechub"
subnet_name                         = "snet-dataprivacy-poc"
new_network_interface = {
  ip_configurations = [
    {
      name                          = "vm-securiti-poc-ipconfig"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.254.10.84"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Sadaqat Ulla Patel",
  "ENV" : "POC",
  "Application Name" : "Dataprivacy Tool Securiti.ai",
  "RITM" : "RITM0069628"
}