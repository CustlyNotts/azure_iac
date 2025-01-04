subscription_id     = <subscription_id>
apimName                = "ecom-apim-nonprod"
resource_group_name = "rg-ecommerce-dev"
location="uaenorth"
apimPublisherEmail ="bastian.joe@dpworld.com"
apimPublisherName="ecom-apim-nonprod"
apimSku="Developer"
apimSkuCapacity=1
subnet_id="/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-apim-nonprod"

tags = {
  "Application Name" : "Azure APIM (ecomm poc)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "Dev"
  "RITM" : "RITM0111866"
}