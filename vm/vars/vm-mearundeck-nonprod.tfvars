subscription_id     = <subscription_id>
resource_group_name = "RG-MEARUNDECK-NONPROD"
name                = "vm-mearundeck-nonprod"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-mearundeck-nonprod_OsDisk_1_0466f0c384914bfd8d22aa1caed2565d"
  disk_size_gb         = "30"
  type                 = "Standard_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/RG-MEARUNDECK-NONPROD/providers/Microsoft.Compute/disks/vm-mearundeck-nonprod_OsDisk_1_0466f0c384914bfd8d22aa1caed2565d"
}

virtual_network_name                = "vnet-mea-nonprod"
virtual_network_resource_group_name = "rg-mea-infra-nonprod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-mearundeck-nonprod394"
  resource_group_name            = "rg-mearundeck-nonprod"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.73.13"
    }
  ]
}

os_profile_linux_config = {
  disable_password_authentication = false
}

identity = {
  type = "SystemAssigned"
}
source_image_reference = {
  publisher = "canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-mearundeck-nonprod"
  admin_username = "azureuser"
}

#oot_diagnostics = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "rundeck",
  "Application Owner" = "Daniel Stuart / pradeesh raju"
  "ENV"               = "DEV"
  "scheduler"         = "off=(M-F,21);on=(M-F,8);tz=Asia/Dubai"
}
delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
