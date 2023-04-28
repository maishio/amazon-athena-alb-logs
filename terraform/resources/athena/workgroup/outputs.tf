# Amazon Athena Workgroup
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup

output "athena_workgroup" {
  description = "Amazon Athena Workgroup resource."
  value       = aws_athena_workgroup.this
}
