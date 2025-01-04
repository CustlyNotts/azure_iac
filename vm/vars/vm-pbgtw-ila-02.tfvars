subscription_id     = <subscription_id>
resource_group_name = "rg-ila-dl-prod"
name                = "vm-pbgtw-ila-02"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}

virtual_network_name                = "vnet-ila-dl-prod"
virtual_network_resource_group_name = "rg-ila-dl-prod"
subnet_name                         = "snet-ila-managment"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.7.195.5"
    }
  ]
  dns_servers = ["10.254.10.4", "10.254.10.7"]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Antoni Sabater",
  "ENV" : "PROD",
  "purpose" : "Migration from ILA",
  "Usage_Description" = "Re engineer and repatriate to CDP",
  "Application Name" : "BA ILA",
  "POC" : "Adele Jansen"
}