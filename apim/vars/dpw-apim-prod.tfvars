subscription_id     = <subscription_id>
apimName                = "dpw-apim-prod"
resource_group_name = "rg-dpw-apim-prod"
location="uaenorth"
apimPublisherEmail ="bastian.joe@dpworld.com"
apimPublisherName="dpw-apim-prod"
apimSku="Premium"
apimSkuCapacity=1
subnet_id="/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/rg-dpw-apim-prod/providers/Microsoft.Network/virtualNetworks/vnet-apim-prod/subnets/snet-apim-prod"

tags = {
  "Application Name" : "Azure APIM",
  "Application Owner" : "Shaloof Moopan",
  "ENV" : "PROD"
  "RITM" : "12345"
}