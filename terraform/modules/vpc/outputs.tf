output "flow_logs_bucket_id" {
  description = "ID of the ALB log bucket."
  value       = module.flow_logs.s3_bucket.id
}

output "private_subnet_ids" {
  description = "Private subnet IDs."
  value       = module.private_subnet.subnet.*.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs."
  value       = module.public_subnet.subnet.*.id
}

output "vpc_id" {
  description = "VPC ID."
  value       = module.vpc.vpc.id
}
