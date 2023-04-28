# Amazon Athena Named Query
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_named_query

resource "aws_athena_named_query" "this" {
  database    = var.database
  description = var.description
  name        = var.name
  query       = templatefile(var.path, var.vars)
  workgroup   = var.workgroup
}
