subscription_id     = <subscription_id>
resource_group_name = "cargoes-prod"
name                = "cargoes-platform-cluster-prod-vnet"
address_space       = ["10.240.0.0/22"]
tags = {
  "Application Name" : "Flow/datachain/logistics",
  "Application Owner" : "Ravi/Mostafa/Jaya",
  "ENV" : "PROD",
  "IaC By" : "Ayodele Orebe"
}
subnets = [
  {
    name             = "cargoes-platform-cluster-subnet-private-lb"
    address_prefixes = ["10.240.2.0/25"]
    route_table_id   = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/DPWHyderabadProd/providers/Microsoft.Network/routeTables/Routecargoesprod-cargoes-platform-cluster-subnet-private-lb"
  },
  {
    name                      = "cargoes-platform-cluster-prod-subnet-1"
    address_prefixes          = ["10.240.0.0/23"]
    network_security_group_id = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/cargoes-prod/providers/Microsoft.Network/networkSecurityGroups/cargoes-metabase-vm-nsg"
    route_table_id            = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/DPWHyderabadProd/providers/Microsoft.Network/routeTables/Routecargoesprod"
  },
  {
    name             = "snet-cargoesflow-functionapp"
    address_prefixes = ["10.240.3.0/27"]
  }
]