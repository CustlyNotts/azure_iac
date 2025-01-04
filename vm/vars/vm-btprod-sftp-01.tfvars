subscription_id     = <subscription_id>
resource_group_name = "rg-btprod-sftp-01"
name                = "vm-btprod-sftp-01"
os_simple           = "CentOS"
size                = "Standard_B2s"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "vm-btprod-sftp_OsDisk-01"
  disk_size_gb         = "32"
  type                 = "Premium_LRS"
}

boot_diagnostics_storage_account_uri = "https://bootdiagdpwvm.blob.core.windows.net/"
boot_diagnostics                     = true
virtual_network_name                 = "vnet-btnwhub"
virtual_network_resource_group_name  = "rg-btnwhub"
subnet_name                          = "snet-btprod"
new_network_interface = {
  name                = "vm-btprod-sftp-01914"
  resource_group_name = "rg-btprod-sftp-01"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.223.12.6"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Name"  = "Bharat Trade",
  "Application Owner" = "Daniel Stuart"
  "ENV"               = "PROD"
  "Last Backup"       = "10/05/2023, 09:02:11 PM"
}
