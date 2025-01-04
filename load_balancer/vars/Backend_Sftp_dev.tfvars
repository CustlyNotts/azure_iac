subscription_id     = <subscription_id>
resource_group_name = "Rg-sftp-dev"
location            = "uk south"
lb_name             = "Backend_Sftp_dev"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  Sftpdev_LB = {
    subnet_id                     = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/Snet-sftp"
    private_ip_address            = "172.22.176.4"
    private_ip_address_allocation = "Dynamic"
  }
}

backend_address_pools = {
  Bkp_sftpdev = {
    name = "Bkp_sftpdev"
  }
}


tags = {
  "Application Name" : "Mawani Sftp",
  "Application Owner" : "abdulla.kazim",
  "ENV" : "DEV"
}