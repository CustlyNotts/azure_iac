variable "subscription_id" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "name" {
  type = string
}
variable "location" {
  type = string
}
variable "load_balancer_frontend_ip_configuration_ids" {
  type = string
}

# variable "alias" {
#   type = string
#   default=""
# }



variable "nat_ip_configurations" {
  type = list(object({
    name = string
    #private_ip_address         = string
    private_ip_address_version = string
    subnet_id                  = string
    primary                    = bool
  }))
}

variable "auto_approval_subscription_ids" {
  type    = list(any)
  default = []
}

variable "visibility_subscription_ids" {
  type    = list(any)
  default = []
}
variable "fqdns" {
  type    = list(any)
  default = []
}


variable "tags" {
  type    = map(any)
  default = {}
}


