
subscription_id     = <subscription_id>
resource_group_name = "rg-checkpointmgmt"
name                = "vm-cnswindowsjmp-01"
#os_simple           = "Windows 10 Pro"
size     = "Standard_D2s_v3"
image_os = "windows"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "cnswindowsjmp-01-osdisk01"
  disk_size_gb         = "128"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Windows"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourcegroups/rg-checkpointmgmt/providers/Microsoft.Compute/disks/cnswindowsjmp-01-osdisk01"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-cnsprihub"
virtual_network_resource_group_name  = "rg-cnsprihubnw"
subnet_name                          = "snet-cnsprimgmt"
new_network_interface = {
  name                = "vm-cnswindowsjmp-01888"
  resource_group_name = "rg-checkpointmgmt"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.222.4.37"
    }
  ]
}
admin_username = "azureuser"
identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Owner" : "Daniel/Sachin",
  "Application Name" : "Mawani CNS",
  "Env" : "PROD"
  "Last Backup" : "11/02/2023, 09:04:30 PM"
}
