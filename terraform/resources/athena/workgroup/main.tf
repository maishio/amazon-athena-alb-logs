# Amazon Athena Workgroup
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup

resource "aws_athena_workgroup" "this" {
  description   = var.description
  force_destroy = var.force_destroy
  name          = var.name
  state         = var.state
  tags          = merge(var.tags, { "Name" = var.name })

  configuration {
    bytes_scanned_cutoff_per_query     = var.bytes_scanned_cutoff_per_query
    enforce_workgroup_configuration    = var.enforce_workgroup_configuration
    publish_cloudwatch_metrics_enabled = var.publish_cloudwatch_metrics_enabled
    requester_pays_enabled             = var.requester_pays_enabled

    engine_version {
      selected_engine_version = var.selected_engine_version
    }

    result_configuration {
      output_location = var.output_location

      encryption_configuration {
        encryption_option = var.encryption_option
        kms_key_arn       = var.kms_key_arn
      }
    }
  }
}
