subscription_id     = <subscription_id>
resource_group_name = "rg-mea-prod"
name                = "vm-mea-prod-build"
os_simple           = "CentOS"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-mea-prod-build_OsDisk_1_e756dcef993d43cda133edd239dabdd4"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-prod/providers/Microsoft.Compute/disks/vm-mea-prod-build_OsDisk_1_e756dcef993d43cda133edd239dabdd4"
}

virtual_network_name                = "vnet-mea-prod"
virtual_network_resource_group_name = "rg-mea-infra-prod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-mea-prod-build960"
  resource_group_name            = "rg-mea-prod"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.105.5"
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
  publisher = "OpenLogic"
  offer     = "CentOS"
  sku       = "7_9-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-mea-prod-build"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "mea"
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "PROD"
  "Last Backup"       = "11/01/2023, 05:04:47 PM"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false