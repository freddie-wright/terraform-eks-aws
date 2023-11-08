variable "region" {
  default     = "eu-west-1"
  type        = string
  description = "Region to deploy AWS resources into"
}

variable "profile" {
  default     = "fred"
  type        = string
  description = "AWS credentials profile to use for AWS deployment"
}
