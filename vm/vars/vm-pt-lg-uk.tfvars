subscription_id     = <subscription_id>
resource_group_name = "rg-perftest"
name                = "vm-pt-lg"
os_simple           = ""
size                = "Standard_F4s_v2"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "Attach"
  name                 = "pt-lg_OsDisk_1_1c4eca92523d419da1b7faeb1236c689"
  disk_size_gb         = "64"
  type                 = "StandardSSD_LRS"
}


subnet_id    = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/UAT1"
nic_location = "uksouth"

identity = {
  type = "SystemAssigned"
}


tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "TESTING"
}

