subscription_id     = <subscription_id>
resource_group_name = "rg_cargoesrunner_dev"
name                = "vm-controltool-etl-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
data_disks = [
  {
    name                 = "app"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = 150
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

  resource_group_name = "rg_cargoesRunner_Vnet_nonprod"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.153.228.20"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Cargoes Runner",
  "Application Owner" = "Vishank Srivatsava",
  "ENV"               = "NonProd"
}