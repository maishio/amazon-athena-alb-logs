# Amazon Athena Database
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database

variable "bucket" {
  description = "Name of S3 bucket to save the results of the query execution."
  type        = string
}

variable "comment" {
  description = "Description of the database."
  type        = string
  default     = "Managed by Terraform"
}

variable "force_destroy" {
  description = "When destroying this database, destroy even if it contains data."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the database to create."
  type        = string
}
