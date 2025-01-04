subscription_id     = <subscription_id>
resource_group_name = "rg-btcheckpointfw"
name                = "vm-btwindowsjmp"
computer_name       = "vm-btwindowsjmp"
os_simple           = "Windows 10 Pro"
size                = "Standard_B2ms"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-btwindowsjmp_OsDisk_1_881e3bb048a24ef1977b02ddce6b45e8"
  disk_size_gb         = "127"
  type                 = "Premium_LRS"
}

boot_diagnostics_storage_account_uri = "https://bootdiagdpwvm.blob.core.windows.net/"
boot_diagnostics                     = true
virtual_network_name                 = "vnet-bthub"
virtual_network_resource_group_name  = "rg-btprihubnw"
subnet_name                          = "snet-btfwmgmt"
new_network_interface = {
  name                = "vm-btwindowsjmp318"
  resource_group_name = "rg-btcheckpointfw"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.222.32.37"
    }
  ]
}

os_profile_windows_config = {
  provision_vm_agent        = true
  enable_automatic_upgrades = true
}


os_profile = {
  computer_name  = "vm-btwindowsjmp"
  admin_username = "bharattrade"
}

admin_username = "bharattrade"
identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Name"  = "Bharat Trade",
  "Application Owner" = "Daniel Stuart"
  "ENV"               = "PROD"
  "Last Backup"       = "10/05/2023, 09:02:24 PM"
}
