subscription_id     = <subscription_id>
resource_group_name = "rg-sailpoint-prod"
name                = "vm-sailpointiiq-fe-prod1"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D4s_v3"
availability_set_id = "/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-sailpoint-infra-prod/providers/Microsoft.Compute/availabilitySets/availset-sailpointfrontend-prod"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = [
  {
    name                 = "vm-sailpointiiq-fe-prod1_DataDisk"
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
virtual_network_name                = "vnet-sailpoint-prod"
virtual_network_resource_group_name = "rg-sailpoint-infra-prod"
subnet_name                         = "snet-sailpoint-prod"
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
    "ENV" : "PROD",
    "Application Name" : "Sailpoint",
    "RITM" : "RITM0103773",
    "OsPatching" : "ProdWithoutReboot"
}