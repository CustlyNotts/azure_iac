
subscription_id     = <subscription_id>
resource_group_name = "rgnauavd"
name                = "VM-NAU-AVD-2"
size                = "Standard_E4s_v3"
image_os            = "windows"
vmimport            = "enabled"

os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "VM-NAU-AVD-2_OsDisk_1_019243bc41b746458430f5a0bfb9c5ce"
  disk_size_gb         = "127"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Windows"
  managed_disk_id      = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/RGNAUAVD/providers/Microsoft.Compute/disks/VM-NAU-AVD-2_OsDisk_1_019243bc41b746458430f5a0bfb9c5ce"
}

virtual_network_name                = "vnet-nau-avd"
virtual_network_resource_group_name = "rgnauavd"
subnet_name                         = "subnauavd"
new_network_interface = {
  name                = "VM-NAU-AVD-2-nic"
  resource_group_name = "rgnauavd"
  ip_configurations = [
    {
      name                          = "ipconfig"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.236.250.5"
    }
  ]
}

vm_additional_capabilities = {
  hibernation_enabled = false
  ultra_ssd_enabled = false
}

os_profile = {
  admin_username = "Azureuser"
  computer_name  = "VM-NAU-AVD-2"
}
os_profile_windows_config = {
  enable_automatic_upgrades = true
  provision_vm_agent        = true
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = false

tags = {
  "cm-resource-parent" : "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rgnauavd/providers/Microsoft.DesktopVirtualization/hostpools/HP-NAU-PRD",
  "Application Name" : "NAU AVD",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "PROD"
}


delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
