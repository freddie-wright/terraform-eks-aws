output "s3_bucket" {
  value = aws_s3_bucket.terraform_state[*].bucket
  description = "ARN of the S3 bucket used to store state files"
}
