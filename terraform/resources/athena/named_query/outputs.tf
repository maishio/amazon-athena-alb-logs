# Amazon Athena Named Query
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_named_query

output "athena_named_query" {
  description = "Amazon Athena Named Query resource."
  value       = aws_athena_named_query.this
}
