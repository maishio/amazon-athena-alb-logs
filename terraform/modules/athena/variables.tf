variable "account" {
  description = "AWS Account ID."
  type        = map(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}
