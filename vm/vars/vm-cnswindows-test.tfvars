subscription_id     = <subscription_id>
resource_group_name = "cnsnw"
name                = "vm-cnswindows-test"
#os_simple           = "Windows 10 Pro"
size     = "Standard_E4s_v4"
image_os = "windows"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-cnswindows-test_OsDisk_1_39619d5fe220403983dc3228b3172945"
  disk_size_gb         = "127"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Windows"
  managed_disk_id      = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/CNSNW/providers/Microsoft.Compute/disks/vm-cnswindows-test_OsDisk_1_39619d5fe220403983dc3228b3172945"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "CNSNetwork"
virtual_network_resource_group_name  = "cnsnw"
subnet_name                          = "Test"
new_network_interface = {
  name                           = "vm-cnswindows-test256"
  resource_group_name            = "cnsnw"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "172.22.3.243"
    }
  ]
}

data_disks = [
  {
    name                 = "cnswindowstest-datadisk"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 32
    create_option        = "Copy"
    source_resource_id   = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Compute/snapshots/snap-cnswindows-datdisk-04-10-21"
    attach_setting = {
      lun           = 0
      caching       = "None"
      create_option = "Attach"
    }
    encryption_settings = {
      enabled = true
      disk_encryption_key = {
        secret_url      = "https://kv-cnsencryption.vault.azure.net/secrets/355D79B6-8E7E-4D11-B734-E8CE24A442C9/78555fc3b87d4fbe8c4461445cb18987"
        source_vault_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/Rg-Encryption-Prod/providers/Microsoft.KeyVault/vaults/kv-cnsEncryption"
      }
    }
  }
]

source_image_reference = {
  publisher = "MicrosoftWindowsServer"
  offer     = "WindowsServer"
  sku       = "2019-Datacenter"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-cnswindows-t"
  admin_username = "mawani"
}

os_profile_windows_config = {
  provision_vm_agent        = true
  enable_automatic_upgrades = false
}

identity = {
  type = "SystemAssigned"
}

tags = {
  "ENV" : "PROD",
  "Application Owner" : "Daniel/Sachin",
  "Application Name" : "Mawani CNS"
}

#data_disk_os_type = "Windows"
