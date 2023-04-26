# Amazon S3 Object
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object

resource "aws_s3_object" "this" {
  bucket = var.bucket
  key    = var.key
  source = var.source
  tags   = merge(var.tags, { "Name" = var.key })
}
