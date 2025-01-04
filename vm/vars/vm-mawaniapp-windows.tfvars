subscription_id     = <subscription_id>
resource_group_name = "RG-CNSMAWANI-WINDOW"
name                = "VM-MAWANIAPP-WINDOWS"
#os_simple           = "Windows 10 Pro"
size     = "Standard_D2s_v3"
image_os = "windows"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-mawaniapp-windows_OsDisk_1_2e513c9ac0484c29bf0bb231e97ccc98"
  disk_size_gb         = "127"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Windows"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsmawani-window/providers/Microsoft.Compute/disks/vm-mawaniapp-windows_OsDisk_1_2e513c9ac0484c29bf0bb231e97ccc98"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "CNSNetwork"
virtual_network_resource_group_name  = "cnsnw"
subnet_name                          = "UAT1"
new_network_interface = {
  name                           = "vm-mawaniapp-windows893"
  resource_group_name            = "rg-cnsmawani-window"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.32.118"
    }
  ]
}


source_image_reference = {
  publisher = "MicrosoftWindowsServer"
  offer     = "WindowsServer"
  sku       = "2019-Datacenter"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-mawaniapp-wi"
  admin_username = "azureuser"
}

os_profile_windows_config = {
  provision_vm_agent        = true
  enable_automatic_upgrades = true
}

identity = {
  type = "SystemAssigned"
}

tags = {
  "ENV" : "TESTING ",
  "Application Owner" : "Daniel Stuart",
  "Application Name" : "Mawani CNS"
}

#data_disk_os_type = "Windows"
