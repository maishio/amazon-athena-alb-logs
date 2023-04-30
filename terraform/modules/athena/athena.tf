module "alb_logs_workgroup" {
  source            = "../../resources/athena/workgroup"
  description       = "Athena workgroup for ALB logs"
  encryption_option = "SSE_S3"
  force_destroy     = true
  name              = "alb-logs"
  output_location   = "s3://${module.s3.s3_bucket.id}/alb-logs/"
  tags              = var.tags
}

module "alb_logs_database" {
  source        = "../../resources/athena/database"
  bucket        = module.s3.s3_bucket.id
  comment       = "Athena database for ALB logs"
  force_destroy = true
  name          = "alb_logs"
}

module "alb_logs_named_query" {
  source      = "../../resources/athena/named_query"
  database    = module.alb_logs_database.athena_database.id
  description = "Athena named query for ALB logs"
  name        = "create_alb_logs_table"
  path        = "${path.module}/files/template/create_alb_logs_table.sql.tpl"
  vars = {
    ACCOUNT            = var.account.id
    ALB_LOGS_BUCKET_ID = var.alb_logs_bucket_id
    REGION             = var.region.id
  }
  workgroup = module.alb_logs_workgroup.athena_workgroup.id
}
