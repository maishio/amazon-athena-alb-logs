module "s3" {
  source        = "../../resources/s3/bucket"
  bucket        = "${var.tags.service}-${var.tags.env}-alb-logs-${var.account.id}"
  force_destroy = true
  tags          = var.tags
}

module "s3_lifecycle" {
  source = "../../resources/s3/bucket_lifecycle_configuration"
  bucket = module.s3.s3_bucket.bucket
  rule = [
    {
      id     = "alb_logs"
      status = "Enabled"
      transition = [
        {
          days          = 30
          storage_class = "GLACIER"
        }
      ],
      expiration = [
        {
          days = 365
        }
      ]
    }
  ]
}

module "s3_policy" {
  source = "../../resources/s3/bucket_policy"
  bucket = module.s3.s3_bucket.bucket
  path   = "${path.module}/files/template/alb_s3_bucket_policy.json.tpl"
  vars = {
    ACCOUNT = data.aws_elb_service_account.this.arn
    BUCKET  = module.s3.s3_bucket.id
  }
}
