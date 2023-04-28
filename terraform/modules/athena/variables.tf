variable "account" {
  description = "AWS Account ID."
  type        = map(string)
}

variable "alb_logs_bucket_id" {
  description = "ALB logs bucket ID."
  type        = string
}

variable "flow_logs_bucket_id" {
  description = "VPC Flow logs bucket ID."
  type        = string
}

variable "region" {
  description = "AWS Region ID."
  type        = map(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}

variable "waf_logs_bucket_id" {
  description = "WAFv2 logs bucket ID."
  type        = string
}
