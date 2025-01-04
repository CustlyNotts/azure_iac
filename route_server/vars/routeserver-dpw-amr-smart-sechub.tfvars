subscription_id     = <subscription_id>
resource_group_name              = "rg-dpw-amr-smart-ssh"
location                         = "canadacentral"
subnet                           = "RouteServerSubnet"
sku                              = "Standard"
virtual_network_name             = "vnet-dpw-amr-smart-ssh"
branch_to_branch_traffic_enabled = false
name                             = "ars-dpw-amr-smart-hub"
tags = {
  "Application Name" : "Azure Route Server",
  "Application Owners" : "Kiran Sivaraman/Jerin Mathew",
  "ENV" : "PROD"
}


####Route Server Connection#####
route_server_bgp_connection = null
  # connection1 = {
  #   connection_name = "route-connection1"
  #   route_server_id = "router_server"
  #   peer_asn        = 640200
  #   peer_ip         = "54.2.4.123"
  # }


##Public_Ip- Virtual network Gateway
public_ip_name = "ars-dpw-amr-pub-ip"
publicip_sku = {
  sku  = "Standard" ## Either Basic/Standard
  tier = "Regional" ## Either Regional/Global
}
allocation_method = "Static" ##Either Staic / Dynamic
ip_address        = ""
zones             = ["1", "2", "3"]
