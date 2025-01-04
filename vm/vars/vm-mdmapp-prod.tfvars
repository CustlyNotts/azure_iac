subscription_id     = <subscription_id>
resource_group_name = "rg-mdm-prod"
name                = "vm-mdmapp-prod"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_E8s_v5"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = [
  {
    name                 = "data"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 500
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    },
  }
]

virtual_network_name                = "vnet-mdm-prod"
virtual_network_resource_group_name = "rg-mdm-infra-prod"
subnet_name                         = "snet-mdm-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.4.32.5"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Owner" : "Kumanan Archunan",
  "ENV" : "PROD",
  "Application Name" : "MDM APP VM PROD",
  "RITM" : "RITM0067581"
}
