# Amazon Athena Named Query
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_named_query

variable "database" {
  description = "Database to which the query belongs."
  type        = string
}

variable "description" {
  description = "Description of the query."
  type        = string
  default     = "Managed by Terraform"
}

variable "name" {
  description = "Name of the query."
  type        = string
}

variable "path" {
  description = "Path to the query file."
  type        = string
}

variable "vars" {
  description = "Map of variables to be passed to the query file."
  type        = map(string)
  default     = {}
}
