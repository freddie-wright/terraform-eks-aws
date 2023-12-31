resource "aws_dynamodb_table" "state_lock" {
  count                       = var.dynamodb_table_count
  name                        = format("terraform-eks-state-lock-%s", var.tables[count.index])
  billing_mode                = "PAY_PER_REQUEST"
  hash_key                    = "LockID"
  deletion_protection_enabled = true

  server_side_encryption {
    enabled = true
  }

  attribute {
    name = "LockID"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  depends_on = [aws_s3_bucket.terraform_state]
}
