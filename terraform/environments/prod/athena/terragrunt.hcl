# Terragrunt terraform
# https://terragrunt.gruntwork.io/docs/reference/config-blocks-and-attributes/#terraform

terraform {
  source = "../../..//modules/athena"
}

# Terragrunt include
# https://terragrunt.gruntwork.io/docs/reference/config-blocks-and-attributes/#include

include {
  path = find_in_parent_folders()
}

# Terragrunt dependency
# @see https://terragrunt.gruntwork.io/docs/reference/config-blocks-and-attributes/#dependency

dependency "alb" {
  config_path = "../alb"

  mock_outputs = {
    alb_logs_bucket_id = "alb_logs_bucket_id"
    waf_logs_bucket_id = "waf_logs_bucket_id"
  }
}

# Terragrunt dependency
# @see https://terragrunt.gruntwork.io/docs/reference/config-blocks-and-attributes/#dependency

dependency "vpc" {
  config_path = "../vpc"

  mock_outputs = {
    flow_logs_bucket_id = "flow_logs_bucket_id"
  }
}

# Terragrunt inputs
# https://terragrunt.gruntwork.io/docs/features/inputs/#inputs

inputs = {
  alb_logs_bucket_id  = dependency.alb.outputs.alb_logs_bucket_id
  waf_logs_bucket_id  = dependency.alb.outputs.waf_logs_bucket_id
  flow_logs_bucket_id = dependency.vpc.outputs.flow_logs_bucket_id
}
