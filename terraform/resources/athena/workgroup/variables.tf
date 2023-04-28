# Amazon Athena Workgroup
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup

/* Top-level Arguments */

variable "description" {
  description = "Description of the workgroup."
  type        = string
  default     = "Managed by Terraform"
}

variable "force_destroy" {
  description = "When destroying this workgroup, destroy even if the workgroup contains any named queries."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the workgroup."
  type        = string
}

variable "state" {
  description = "State of the workgroup."
  type        = string
  default     = "ENABLED"
}

variable "tags" {
  description = "Key-value map of resource tags for the workgroup."
  type        = map(string)
  default     = {}
}

/* Configuration Arguments */

variable "bytes_scanned_cutoff_per_query" {
  description = "Integer for the upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan."
  type        = number
  default     = 0
}

variable "enforce_workgroup_configuration" {
  description = "Boolean whether the settings for the workgroup override client-side settings."
  type        = bool
  default     = true
}

variable "publish_cloudwatch_metrics_enabled" {
  description = "Boolean whether Amazon CloudWatch metrics are enabled for the workgroup."
  type        = bool
  default     = true
}

variable "requester_pays_enabled" {
  description = "If set to true , allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries."
  type        = bool
  default     = false
}

/* Engine Version Arguments */

variable "selected_engine_version" {
  description = "Requested engine version."
  type        = string
  default     = "AUTO"
}

/* Result Configuration Arguments */

variable "output_location" {
  description = "Location in Amazon S3 where your query results are stored, such as `s3://path/to/query/bucket/`."
  type        = string
  default     = null
}

/* Encryption Configuration Arguments */

variable "encryption_option" {
  description = "It specifies whether query results must be encrypted, for all queries that run in this workgroup."
  type        = string
}

variable "kms_key_arn" {
  description = "ARN of the KMS key that is used to encrypt query results."
  type        = string
  default     = null
}
