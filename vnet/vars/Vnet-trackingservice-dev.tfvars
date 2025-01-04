subscription_id     = <subscription_id>
resource_group_name = "rg-trackingservice-dev-infra"
name                = "Vnet-trackingservice-dev"
address_space       = ["10.143.0.0/18"]
subnets = [
  {
    name              = "snet-nonaks-dev"
    address_prefixes  = ["10.143.42.0/23"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/routeTables/rt-trackingservice-dev"
  },
  {
    name             = "snet-wvd"
    address_prefixes = ["10.143.44.0/23"]
    route_table_id   = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/routeTables/rt-trackingservice-dev"
  },
  {
    name             = "snet-akspod-dev"
    address_prefixes = ["10.143.32.0/21"]
  },
  {
    name             = "snet-aksnode-dev"
    address_prefixes = ["10.143.40.0/23"]
  },
  {
    name              = "snet-psql-trackingserver-dev"
    address_prefixes  = ["10.143.0.0/26"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name             = "snet-migrationservice-dev"
    address_prefixes = ["10.143.1.0/26"]
  },
  {
    name              = "snet-aircargoestracking-qa"
    address_prefixes  = ["10.143.1.64/27"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-aircargoestracking-staging"
    address_prefixes  = ["10.143.1.96/27"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-aircargoestracking-dev"
    address_prefixes  = ["10.143.1.128/27"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-unifeeder-staging"
    address_prefixes  = ["10.143.1.160/27"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-railtracking-nonprod"
    address_prefixes  = ["10.143.1.192/27"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-marinetraffic-eta-analysis-dev"
    address_prefixes  = ["10.143.1.224/28"]
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name              = "snet-elogisolcargoesintg-nonprod"
    address_prefixes  = ["10.143.0.64/28"]
    service_endpoints = ["Microsoft.Storage"]
  }
]