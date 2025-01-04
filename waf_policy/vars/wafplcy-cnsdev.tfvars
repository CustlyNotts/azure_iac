subscription_id     = <subscription_id>
resource_group_name = "rg-cnsdev"
name                = "wafplcy-cnsdev"
policy_settings = {
  enabled                          = true
  mode                             = "Detection"
  request_body_check               = true
  file_upload_limit_in_mb          = 100
  max_request_body_size_in_kb      = 128
  request_body_inspect_limit_in_kb = 0
}
