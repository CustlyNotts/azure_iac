subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflow-prod-dr"
name                = "vm-selfhostedagent-dr"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoesflow-dr"
virtual_network_resource_group_name = "rg-cargoesflow-dr-infra"
subnet_name                         = "snet-nonaks-prod-dr"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.2.136.4"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
##
#tags = {
#  "Application Name"  = "Cargoes Flow,
# "Application Owner" = "Mostafa / Ravi K",
#"ENV"               = "PROD"
#"scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
#}

