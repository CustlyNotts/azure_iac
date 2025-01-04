subscription_id     = <subscription_id>
resource_group_name = "rg-sailpoint-uat"
name                = "vm-sailpointiiq-uat"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D4s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = [
  {
    name                 = "vm-sailpointiiq-uat_DataDisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 128
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]
virtual_network_name                = "vnet-sailpoint-nonprod"
virtual_network_resource_group_name = "rg-infra-nonprod"
subnet_name                         = "snet-sailpoint-uat"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.154.24.29"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
    "Application Owner" : "Gagandeep Singh",
    "ENV" : "UAT",
    "Application Name" : "Sailpoint",
    "RITM" : "RITM0098964",
    "OsPatching"  : "NonProd"
}