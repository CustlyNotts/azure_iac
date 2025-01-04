subscription_id     = <subscription_id>
resource_group_name = "rg-globalprod-rundeck"
name                = "vm-globalprod-rundeck"
#os_simple           = "UbuntuServer"
size                         = "Standard_D2s_v3"
image_os                     = "linux"
vmimport                     = "enabled"
primary_network_interface_id = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-globalprod-rundeck/providers/Microsoft.Network/networkInterfaces/vm-globalprod-rundeck-nic"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-globalprod-rundeck_OsDisk_1_463fb5f59a8c41889c8b9dc8449dd5ff"
  disk_size_gb         = "30"
  type                 = "Standard_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-globalprod-rundeck/providers/Microsoft.Compute/disks/vm-globalprod-rundeck_OsDisk_1_463fb5f59a8c41889c8b9dc8449dd5ff"
}

virtual_network_name                = "vnet-global-prod"
virtual_network_resource_group_name = "rg-global-infra-prod"
subnet_name                         = "snet-internallb"
new_network_interface = {
  name                           = "vm-globalprod-rundeck-nic"
  resource_group_name            = "rg-globalprod-rundeck"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "vm-globalprod-rundeck-ipconfig"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.2.40.15"
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
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-globalprod-rundeck"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "CCS",
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV"               = "PROD"
  "Last Backup"       = "11/02/2023, 05:05:37 PM"
}
delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
