
subscription_id     = <subscription_id>
resource_group_name = "rg-sftp-dev"
name                = "vm-sftp-dev2"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_F4s_v2"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "vm-sftp-dev2-OS"
  disk_size_gb         = "32"
  type                 = "StandardSSD_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourcegroups/Rg-sftp-dev/providers/Microsoft.Compute/disks/vm-sftp-dev2-OS"
}

virtual_network_name                = "CNSNetwork"
virtual_network_resource_group_name = "cnsnw"
subnet_name                         = "Snet-sftp"
new_network_interface = {
  name                = "vm-sftp-dev285"
  resource_group_name = "Rg-sftp-dev"
  #accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.176.8"
    }
  ]
}

identity = {
  type = "SystemAssigned"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name" : "Mawani Sftp",
  "Application Owner" : "abdulla.kazim",
  "ENV" : "DEV"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
