subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-services"
name                = "vm-wlp-devops"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_D4s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-wlp-devops_OsDisk_1_29e94889de384b359f9242bb3d5169d3"
  disk_size_gb         = "128"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/RG-WLP-SHARED-SERVICES/providers/Microsoft.Compute/disks/vm-wlp-devops_OsDisk_1_29e94889de384b359f9242bb3d5169d3"
}

virtual_network_name                = "vnet-wlp-prod-uaenorth"
virtual_network_resource_group_name = "rg-wlp-prod"
subnet_name                         = "snet-wlp-prod-native-uaenorth"
new_network_interface = {
  name                           = "vm-wlp-devops644"
  resource_group_name            = "rg-wlp-shared-services"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.233.117.8"
    }
  ]
}

#primary_network_interface_id     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/networkInterfaces/nic-wlp-dev-nginx"

os_profile_linux_config = {
  disable_password_authentication = true

}

identity = {
  type = "SystemAssigned"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

source_image_reference = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-wlp-devops"
  admin_username = "azureuser"
}

tags = {
  "Application Name"  = "WLP shared "
  "Application Owner" = "Hussain "
  "ENV"               = "PROD"
  "Last Backup"       = "11/05/2023, 05:06:01 PM"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
