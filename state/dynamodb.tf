resource "aws_dynamodb_table" "state_lock" {
  count = var.dynamodb_table_count
  name = format("terraform-eks-state-lock-%s", var.tables[count.index])
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  server_side_encryption {
    enabled     = true
    kms_key_arn = aws_kms_key.dynamodb.arn
  }

  attribute {
    name = "LockID"
    type = "S"
  }
  
  point_in_time_recovery {
    enabled = true
  }

  depends_on   = [aws_s3_bucket.terraform_state]
}
