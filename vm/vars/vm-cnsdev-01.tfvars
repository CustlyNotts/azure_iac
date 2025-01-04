subscription_id     = <subscription_id>
resource_group_name = "cnsnw"
name                = "vm-cnsdev-01"
#os_simple           = "Windows 10 Pro"
size     = "Standard_B4ms"
image_os = "windows"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "vm-cnsdev-osdisk-01"
  disk_size_gb         = "128"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Windows"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourcegroups/cnsnw/providers/Microsoft.Compute/disks/vm-cnsdev-osdisk-01"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "CNSNetwork"
virtual_network_resource_group_name  = "cnsnw"
subnet_name                          = "Test"
new_network_interface = {
  name                = "vm-cnsdev-01161"
  resource_group_name = "cnsnw"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.3.238"
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
  "ENV" : "PROD"
}
