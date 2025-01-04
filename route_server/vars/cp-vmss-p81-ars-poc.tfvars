subscription_id     = <subscription_id>
resource_group_name = "RG-CP-VMSS-WAF-PoC"
location  = "uaenorth"
subnet = "RouteServerSubnet"
sku = "Standard"
virtual_network_name = "VNET-CP-VMSS-WAF-PoC"
branch_to_branch_traffic_enabled = false
name = "CP-VMSS-P81-ARS-PoC"
tags = {
  "ENV": "POC",
  "Application Name": "Check Point",
  "Application Owner": "Muhammad Tariq"
}


####Route Server Connection#####
route_server_bgp_connection = {
  connection1 = {
    connection_name = "CP-P81-ARS-Connection-Poc"
    route_server_id = "CP-VMSS-P81-ARS-PoC"
    peer_asn = 65525
    peer_ip = "20.233.209.251"
  }
}

##Public_Ip- Virtual network Gateway
public_ip_name = "CP-PUBIP-P81-POC"
publicip_sku   = {
  sku = "Standard"    ## Either Basic/Standard
  tier = "Regional"   ## Either Regional/Global
}
allocation_method = "Static"  ##Either Staic / Dynamic
ip_address      = ""
zones           = ["1", "2", "3"]
