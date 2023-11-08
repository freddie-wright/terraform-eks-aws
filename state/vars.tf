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
