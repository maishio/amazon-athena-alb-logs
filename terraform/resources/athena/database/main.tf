# Amazon Athena Database
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database

resource "aws_athena_database" "this" {
  bucket        = var.bucket
  comment       = var.comment
  force_destroy = var.force_destroy
  name          = var.name
}
