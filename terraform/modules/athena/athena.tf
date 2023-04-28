module "athena_workgroup" {
  source            = "../../resources/athena/workgroup"
  description       = "Athena workgroup for ALB logs"
  encryption_option = "SSE_S3"
  force_destroy     = true
  name              = "alb-logs"
  output_location   = "s3://${module.s3.s3_bucket.id}/alb-logs/"
  tags              = var.tags
}

module "athena_database" {
  source        = "../../resources/athena/database"
  bucket        = module.s3.s3_bucket.id
  comment       = "Athena database for ALB logs"
  force_destroy = true
  name          = "alb_logs"
}
