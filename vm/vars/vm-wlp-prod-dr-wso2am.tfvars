
subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-prod-dr"
name                = "vm-wlp-prod-dr-wso2am"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_E2s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "vmwlpproddrwso2am-osdisk-20210701-060837"
  disk_size_gb         = "256"
  type                 = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Compute/disks/vmwlpproddrwso2am-osdisk-20210701-060837"
}

virtual_network_name                = "vnet-wlp-prod-dr-uaecentral"
virtual_network_resource_group_name = "rg-wlp-prod-dr"
subnet_name                         = "snet-wlp-prod-dr-native-uaecentral"
new_network_interface = {
  name                = "vm-wlp-prod-dr--nic-542085a16ecf4117b92fda051acce1c1"
  resource_group_name = "rg-wlp-prod-dr"
  #accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "41cf69b907e442d795741fd18a4997a7"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.233.133.5"
    }
  ]
}

primary_network_interface_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/networkInterfaces/vm-wlp-prod-dr--nic-542085a16ecf4117b92fda051acce1c1"

identity = {
  type = "SystemAssigned"
}

#boot_diagnostics = false
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name" : "DR Setup",
  "Application Owner" : "Nihil Babu",
  "env" : "PROD"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false