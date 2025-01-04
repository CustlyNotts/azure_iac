subscription_id     = <subscription_id>
name                = "agw-btpriappgw-prod"
resource_group_name = "rg-bthub"
subnet_id           = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-bthub/subnets/Snet-btagw-new"
sku = {
  name     = "WAF_v2"
  tier     = "WAF_v2"
  capacity = 0

}
tags = {
        "Application Name": "Bharat Trade",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}

firewall_policy_id = ""
public_ip_name     = "agw-btpriappgw-prod"

frontend_port_name_80          = "port_80"
frontend_port_name_443         = "port_443"
frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
gateway_ip_configuration_name  = "appGatewayIpConfig"


autoscale_configuration = {
  max_capacity = 10
  min_capacity = 0
}