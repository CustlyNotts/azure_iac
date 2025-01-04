subscription_id     = <subscription_id>
resource_group_name = "RG-DPW-UAE-GRN-SSH"
location  = "uaenorth"
subnet = "RouteServerSubnet"
sku = "Standard"
virtual_network_name = "VNET-DPW-UAE-GRN-SSH"
branch_to_branch_traffic_enabled = false
name = "ARS-DPW-UAE-GRN"
tags = {
  "ENV": "PROD",
  "Application Name": "Azure Route Server",
  "Application Owner": "Kiran Sivaraman/Jerin Mathew"
}


####Route Server Connection#####
route_server_bgp_connection = {
  connection1 = {
    connection_name = "ARS-DPW-UAE-Connection"
    route_server_id = "ARS-DPW-UAE"
    peer_asn = 65525
    peer_ip = "20.233.209.251"
  }
}

route_connection_enable = false

##Public_Ip- Virtual network Gateway
public_ip_name = "PublicIP-ARS-DPW-UAE-GRN"
publicip_sku   = {
  sku = "Standard"    ## Either Basic/Standard
  tier = "Regional"   ## Either Regional/Global
}
allocation_method = "Static"  ##Either Staic / Dynamic
ip_address      = ""
zones           = ["1", "2", "3"]
