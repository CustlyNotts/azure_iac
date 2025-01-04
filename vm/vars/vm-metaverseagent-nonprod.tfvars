subscription_id     = <subscription_id>
resource_group_name = "rg-metaverse-nonprod"
name                = "vm-metaverseagent-nonprod"
image_os            = "windows"
os_simple           = "Windows10"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-metaverse-nonprod"
virtual_network_resource_group_name = "rg-network-nonprod"
subnet_name                         = "snet-metaverse-nonprod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.148.0.10"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}
# tags = {
#   "Application Name"  = "Mawani CNS",
#   "Application Owner" = "Daniel Stuart / pradeesh raju",
#   "ENV"               = "UAT"
#   "scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
# }

