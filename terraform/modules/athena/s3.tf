module "s3" {
  source        = "../../resources/s3/bucket"
  bucket        = "${var.tags.service}-${var.tags.env}-athena-query-result-${var.account.id}"
  force_destroy = true
  tags          = var.tags
}

module "s3_versioning" {
  source = "../../resources/s3/bucket_versioning"
  bucket = module.s3.s3_bucket.id
  status = "Enabled"
}
