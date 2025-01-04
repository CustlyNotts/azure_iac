subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-dev"
name                = "vm-wlp-dev-nginx"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_E2s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-wlp-dev-nginx-osdisk"
  disk_size_gb         = "256"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Compute/disks/vm-wlp-dev-nginx-osdisk"
}

virtual_network_name                = "vnet-wlp-dev-uaenorth"
virtual_network_resource_group_name = "rg-wlp-dev"
subnet_name                         = "snet-wlp-dev-native-uaenorth"
new_network_interface = {
  name                           = "nic-wlp-dev-nginx"
  resource_group_name            = "rg-wlp-dev"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ip-wlp-dev-nginx"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.233.85.5"
    }
  ]
}

primary_network_interface_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/networkInterfaces/nic-wlp-dev-nginx"

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
  computer_name  = "vm-wlp-dev-nginx"
  admin_username = "azureuser"
}

tags = {
  "Application Name"  = "WLP Dev"
  "Application Owner" = "hussain.hashimi@dpworld.com"
  #"ENV"               = "DEV"
  "env" = "DEV"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
