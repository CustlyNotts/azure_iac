subscription_id     = <subscription_id>
resource_group_name = "cnsnw"
name                = "VMCNSAUDIT-0"
#os_simple           = "Windows 10 Pro"
size     = "Standard_D2s_v3"
image_os = "windows"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "VMCNSAUDIT-0_OsDisk_1_fe7dcf072f84438497b911f7e8476348"
  disk_size_gb         = "127"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Windows"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/CNSNW/providers/Microsoft.Compute/disks/VMCNSAUDIT-0_OsDisk_1_fe7dcf072f84438497b911f7e8476348"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "CNSNetwork"
virtual_network_resource_group_name  = "cnsnw"
subnet_name                          = "Test"
new_network_interface = {
  name                = "VMCNSAUDIT-0-nic"
  resource_group_name = "cnsnw"
  ip_configurations = [
    {
      name                          = "ipconfig"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.1.197"
    }
  ]
}


source_image_reference = {
  publisher = "microsoftwindowsdesktop"
  offer     = "Windows-10"
  sku       = "20h2-ent-g2"
  version   = "latest"
}


os_profile = {
  computer_name  = "VMCNSAUDIT-0"
  admin_username = "AzureUser"
}



os_profile_windows_config = {
  provision_vm_agent        = true
  enable_automatic_upgrades = true
}


identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Owner" : "Daniel/Sachin",
  "Application Name" : "Mawani CNS",
  "ENV" : "PROD",
  "Last Backup" : "11/07/2023, 09:05:08 PM"
}
