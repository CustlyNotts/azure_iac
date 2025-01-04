subscription_id     = <subscription_id>
resource_group_name = "rg_cargoesrunner_dev"
name                = "vm-runner-testcase-generte-service"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_NV18ads A10 v5"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}

data_disks = [
  {
    name                 = "vm-runner-testcase-generate-service-datadisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 127
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]

virtual_network_name                = "vnet-cargoesRunnernonprod"
virtual_network_resource_group_name = "rg_cargoesRunner_Vnet_nonprod"
subnet_name                         = "snet-staging"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.153.228.21"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Vishank Srivatsava",
  "ENV" : "DEV",
  "Application Name" : "CargoesRunner",
  "RITM" : "RITM0101243"
}