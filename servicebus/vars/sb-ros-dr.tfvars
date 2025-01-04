subscription_id     = <subscription_id>
name                = "sb-ros-dr"
resource_group_name = "rg-ros-dr"
#git pull zone_redundant      = "false"
sku                 = "Premium"

tags                = {
        "Application Name": "ROS",
        "Application Owner": "Tapabrata Dasgupta",
        "ENV": "DR"
}
