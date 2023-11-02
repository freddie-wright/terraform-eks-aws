variable "region" {
    default = "eu-west-1"
    description = "Region to deploy AWS resources into"
}

variable "profile" {
    default = "fred"
    description = "AWS credentials profile to use for AWS deployment"
}

variable "dynamodb_table_count" {
    default = 5
    description = "Number of DynamoDB tables to create"
}

variable "tables" {
    default = []
    description = "DynamoDB tables to create"
}
