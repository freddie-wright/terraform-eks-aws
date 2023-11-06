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

variable "dynamodb_table_count" {
  default     = 3
  type        = number
  description = "Number of DynamoDB tables to create"
}

variable "tables" {
  default     = ["networking", "cluster", "node-group"]
  type        = list(string)
  description = "DynamoDB tables to create"
}
