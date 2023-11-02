resource "aws_kms_key" "dynamodb" {
  description = "KMS key for DynamoDB state lock"
}
