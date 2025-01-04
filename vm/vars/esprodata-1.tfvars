subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflow-elastic-prod"
name                = "esprodata-1"
os_simple           = "Linux"
size                = "Standard_D4s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "esprodata-1-osdisk"
  disk_size_gb         = "30"
  type                 = "Premium_LRS"
}

boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = false
virtual_network_name                 = "Vnet-cargoesflow-prod"
virtual_network_resource_group_name  = "rg-cargoesflowprod-infra"
subnet_name                          = "snet-nonaks-prod"
new_network_interface = {
  name                = "esprodata-1-nic"
  resource_group_name = "rg-cargoesflow-elastic-prod"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.243.44.11"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
  "provider": "648D2193-0CE0-4EFB-8A82-AF9792184FD9",
        "Application Name": "",
        "Application Owner": "Ravi.Kumar/Mostafa/Nitesh",
        "ENV": "PROD",
        "Last Backup": "01/29/2024, 05:10:18 PM"
}

os_profile = {
  computer_name  = "esprodata-1"
  admin_username = "azureuser"
}

os_profile_linux_config = {
  provision_vm_agent        = true
  disable_password_authentication = false
}
