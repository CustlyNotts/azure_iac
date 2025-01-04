
subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-prod-dr"
name                = "vm-wlp-prod-dr-bastion"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_D2s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "vmwlpproddrbastion-osdisk-20210701-055611"
  disk_size_gb         = "256"
  type                 = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Compute/disks/vmwlpproddrbastion-osdisk-20210701-055611"
}

virtual_network_name                = "vnet-wlp-prod-dr-uaecentral"
virtual_network_resource_group_name = "rg-wlp-prod-dr"
subnet_name                         = "snet-wlp-prod-dr-bastion-uaecentral"
new_network_interface = {
  name                = "vm-wlp-prod-dr--nic-9f0e6b812b604df59662ea6a1233ee1d"
  resource_group_name = "rg-wlp-prod-dr"
  #accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "c911bd919dba474cb60938e70c8066b6"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.233.133.38"
    }
  ]
}

primary_network_interface_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/networkInterfaces/vm-wlp-prod-dr--nic-9f0e6b812b604df59662ea6a1233ee1d"

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