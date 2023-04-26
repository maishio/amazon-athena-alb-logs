# Amazon S3 Object
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object

variable "bucket" {
  description = "Name of the bucket."
  type        = string
}

variable "key" {
  description = "Name of the object once it is in the bucket."
  type        = string
}

variable "path" {
  description = "Path to a file that will be read and uploaded as raw bytes for the object content."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
